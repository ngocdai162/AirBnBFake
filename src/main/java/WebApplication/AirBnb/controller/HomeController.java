package WebApplication.AirBnb.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import WebApplication.AirBnb.domain.Users;
import WebApplication.AirBnb.domain.Roles;
import WebApplication.AirBnb.domain.Accounts;
import WebApplication.AirBnb.model.UserDto;
import WebApplication.AirBnb.repository.RatingRepository;
import WebApplication.AirBnb.model.AccountDto;
import WebApplication.AirBnb.model.PasswordDto;
import WebApplication.AirBnb.model.PostDto;
import WebApplication.AirBnb.model.UserAccDto;
import WebApplication.AirBnb.service.IAccountService;
import WebApplication.AirBnb.service.IPostService;
import WebApplication.AirBnb.service.impl.UserServiceImpl;
import WebApplication.AirBnb.service.impl.AccountServiceImpl;
import WebApplication.AirBnb.service.impl.RatingServiceImpl;

@Controller
public class HomeController {
	@Autowired
	AccountServiceImpl accountService;
	@Autowired
	UserServiceImpl userService;
	@Autowired
	RatingServiceImpl ratingService;
	//private HttpSession session;
	@Autowired
	IPostService postService;
	@GetMapping(value = "")
	private String Index(Model model) {
		model.addAttribute("useracc", new UserAccDto());
		model.addAttribute("account", new AccountDto());
		return "index";
	}
	
	@GetMapping(value = "thong-tin-chu-nha/{hostId}")
	private String HotInfo(Model model, @PathVariable("hostId") Long hostId) {
		UserAccDto hostInfo = accountService.getUserAccountByAccountId(hostId);
		List<PostDto> lstPosts = postService.listPostByHostId(hostId);
		int hostRatingAmount = ratingService.getTotalRatingAmountByAccountId(hostId);
		double hostAverageStarNumber = ratingService.getAverageStarNumberByAccountId(hostId);
		model.addAttribute("useracc", new UserAccDto());
		model.addAttribute("account", new AccountDto());
		model.addAttribute("hostInfo",hostInfo);
		model.addAttribute("posts",lstPosts);
		model.addAttribute("hostRatingAmount",hostRatingAmount);
		model.addAttribute("hostAverageStarNumber",hostAverageStarNumber);
		return "host/hostinfo";
	}

	@GetMapping(value = "thong-tin-ca-nhan")
	private String UserInfo(Model model, HttpSession session) {
		System.out.print(session);
		UserAccDto objUserAccDto = (UserAccDto) session.getAttribute("LoginInfor");
		if (objUserAccDto == null)
			return "redirect:/";
		model.addAttribute("isErrors",false);
		model.addAttribute("post", new PostDto());
		model.addAttribute("objUserAccDto", objUserAccDto);
		model.addAttribute("passwordDto", new PasswordDto());
		return "account/accountinfo";
	}

	@GetMapping(value = "trang-chu")
	private String Home(Model model) {
		//System.out.println("Session Home: " + session);
		model.addAttribute("useracc", new UserAccDto());
		model.addAttribute("account", new AccountDto());
		return "index";
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpServletRequest request, HttpSession session, @ModelAttribute("account") AccountDto account, ModelMap model) {
		model.addAttribute("useracc", new UserAccDto());
		model.addAttribute("account", new AccountDto());
		UserAccDto useracc = new UserAccDto();
		useracc = accountService.login(account);
		if (useracc != null) {
			session.setAttribute("LoginInfor", useracc);
			System.out.println("After login: " + request.getHeader("Referer"));
			String url = request.getHeader("Referer");
			if (url.equals("http://localhost:8080/dang-nhap"))
				url = "http://localhost:8080/trang-chu";
			return new ModelAndView("redirect:" + url, model);
		} else {
			model.remove("showFormRegis");
			model.addAttribute("showOverlay", "true");
			model.addAttribute("showFormLogin", "true");
			model.addAttribute("failtureLoginMessage",
					"Tên đăng nhập hoặc mật khẩu không chính xác, vui lòng kiểm tra lại!");
		}

		return new ModelAndView("index", model);
	}

	@Autowired
	ServletContext context;
   
	@RequestMapping(value = "/doi-mat-khau", method = RequestMethod.POST)
	public ModelAndView ChangePassword(HttpSession session, ModelMap model, @Validated @ModelAttribute("passwordDto") PasswordDto passwordDto,
			BindingResult errors) 
	{
	   Boolean isErrors = false;
	   UserAccDto objUserAccDto = (UserAccDto) session.getAttribute("LoginInfor");
	   model.addAttribute("post", new PostDto());
	   model.addAttribute("objUserAccDto", objUserAccDto);
	   model.addAttribute("passwordDto", new PasswordDto());
	   if(errors.hasErrors()) {
		   isErrors = true;
		   model.addAttribute("isErrors",isErrors);
		   return new ModelAndView("/account/accountinfo",errors.getModel());
		   
		   
	   }
	   else {
		   if( !passwordDto.getNewPassword().equals(passwordDto.getConfirmPassword()))
		    {
			   isErrors = true;
			   model.addAttribute("isErrors",isErrors);
			   errors.rejectValue("confirmPassword","passwordDto", "Xác nhận mật khẩu chưa chính xác");
		    }
		   if(!accountService.changePassword(passwordDto.getCurrentPassword(),passwordDto.getNewPassword() , objUserAccDto.getAccountId()))
		   {
			   isErrors = true;
			   model.addAttribute("isErrors",isErrors);
			   errors.rejectValue("confirmPassword","passwordDto", "Mật khẩu hiện tai không đúng");
			   return new ModelAndView("/account/accountinfo",errors.getModel());
		   } else {
			  
			   return new ModelAndView("redirect:/thong-tin-ca-nhan", model);
		   }	  

		   
	   }
	   
//		  return  new ModelAndView("redirect:/",model);
	}
	
	 
	@RequestMapping(value = "/dang-ki", method = RequestMethod.POST)
	public ModelAndView Register(ModelMap model, @Validated @ModelAttribute("useracc") UserAccDto useracc,
			BindingResult errors, @RequestParam("image") MultipartFile image) {
		if (!image.isEmpty()) {
			try {
				String photoPath = context.getRealPath("/avatarimage/" + image.getOriginalFilename());
				image.transferTo(new File(photoPath));
				useracc.setAvatar(image.getOriginalFilename());
				System.out.println(useracc.getAvatar());
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		else {
			//String photoPath = context.getRealPath("/avatarimage/default.jpg");
			useracc.setAvatar("default.jpg");
			System.out.println(useracc.getAvatar());
		}
		model.addAttribute("useracc", new UserAccDto());
		model.addAttribute("account", new AccountDto());
		System.out.println(errors.getAllErrors());
		if (!errors.hasErrors()) {
			System.out.println(errors.getAllErrors());
			System.out.println(useracc.getAvatar());
			boolean isSuccess = accountService.register(useracc);
			if (isSuccess == true) {
				model.addAttribute("statusReg", "Đăng kí tài khoản thành công!");
				return new ModelAndView("redirect:/", model);
			} else {
				model.remove("showFormLogin");
				model.addAttribute("showOverlay", "true");
				model.addAttribute("showFormRegis", "true");
				model.addAttribute("validatedRegis", true);
				errors.rejectValue("mail", "useracc", "Đăng kí tài khoản thất bại, tài khoản này đã tồn tại!");
				// model.addAttribute("statusReg", "Đăng kí tài khoản thất bại, tài khoản này đã
				// tồn tại!");
				return new ModelAndView("index", errors.getModel());
				// return "index";
			}
		} else {
			model.remove("showFormLogin");
			model.addAttribute("showOverlay", "true");
			model.addAttribute("showFormRegis", "true");
		}

		return new ModelAndView("index", errors.getModel());
	}

	@RequestMapping(value = "dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfor");
		String url = request.getHeader("Referer");
		if (url.equals("http://localhost:8080/dang-nhap"))
			url = "http://localhost:8080/trang-chu";
		return "redirect:" + url;
//		return "redirect:" + request.getHeader("Referer");
	}
	
	@PostMapping(value = "updateInfo")
	private String home(@ModelAttribute("objUserAccDto") UserAccDto objUserAccDto, HttpSession session) {
		UserAccDto objUserAccDtoSession = (UserAccDto) session.getAttribute("LoginInfor");
		String email = objUserAccDtoSession.getMail();
		Users objUsers = userService.findByEmail(email);
		objUsers.setName(objUserAccDto.getName());
		objUsers.setSex(objUserAccDto.getSex());
		objUsers.setDateOfBirth(objUserAccDto.getDateOfBirth());
		objUsers.setPhoneNumber(objUserAccDto.getPhoneNumber());
		objUsers.setAddress(objUserAccDto.getAddress());
		userService.save(objUsers);
		objUserAccDtoSession = accountService.getUserAccountByMail(email);
		session.setAttribute("LoginInfor",objUserAccDtoSession);
		return "redirect:/thong-tin-ca-nhan";
	}
	
	

}
