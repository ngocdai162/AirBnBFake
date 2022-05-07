package WebApplication.AirBnb.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

import javax.security.auth.login.AccountNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import WebApplication.AirBnb.domain.Users;
import WebApplication.AirBnb.domain.Roles;
import WebApplication.AirBnb.domain.Accounts;
import WebApplication.AirBnb.domain.Ratings;
import WebApplication.AirBnb.model.AccountDto;
import WebApplication.AirBnb.model.PasswordDto;
import WebApplication.AirBnb.model.UserAccDto;
import WebApplication.AirBnb.repository.UserRepository;
import WebApplication.AirBnb.repository.AccountRepository;
import WebApplication.AirBnb.service.IAccountService;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public List<UserAccDto> getAllUserAccount()
	{
		List<UserAccDto> lstUserAccs = accountRepository.getAllUserAccount();
		for (UserAccDto userAccDto : lstUserAccs) {
			userAccDto.setRoleId(accountRepository.getRoleByAccountId(userAccDto.getAccountId()));
		}
		return lstUserAccs;
	}
	@Override
	public <S extends Accounts> S save(S entity) {
		entity.setPassword(bCryptPasswordEncoder.encode(entity.getPassword()));
		return accountRepository.save(entity);
	}

	@Override
	public boolean register(UserAccDto useracc) {
		try {
			Accounts accountEntity = new Accounts();
			accountEntity.setMail(useracc.getMail());
			accountEntity.setPassword(bCryptPasswordEncoder.encode(useracc.getPassword()));
			Roles role = new Roles();
			role.setRoleId(2l);
			accountEntity.setRole(role);
			accountRepository.save(accountEntity);
			// Lưu tài khoản
			Users userEntity = new Users();
			Date date = Calendar.getInstance().getTime();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = dateFormat.format(date);
			userEntity.setRegisDate(strDate);
			userEntity.setName(useracc.getName());
			userEntity.setPhoneNumber(useracc.getPhoneNumber());
			userEntity.setAddress(useracc.getAddress());
			userEntity.setSex(useracc.getSex());
			userEntity.setDateOfBirth(useracc.getDateOfBirth());
			userEntity.setCCCD(useracc.getCCCD());
			userEntity.setAvatar(useracc.getAvatar());
			userEntity.setAccount(accountEntity);
			userRepository.save(userEntity);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

	@Override
	public UserAccDto login(AccountDto account) {
		try {
			UserAccDto result = new UserAccDto();
			result = accountRepository.getUserAccountByMail(account.getMail());
			
			if (result != null) {
				if (bCryptPasswordEncoder.matches(account.getPassword(), result.getPassword()))
				{
					result.setRoleId(accountRepository.getRoleByAccountId(result.getAccountId()));
					return result;
				}
				else
					return null;
			} else
				return null;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}
    
	
	
	@Override
	public Boolean changePassword (String oldPassword, String newPassword, long accountId) {
		try {	
			String currentPassword = accountRepository.getPasswordByAccountId(accountId);
			if( !bCryptPasswordEncoder.matches( oldPassword, currentPassword)) {
				return false;
			}
			newPassword=bCryptPasswordEncoder.encode(newPassword);
			int result = accountRepository.updatePassword(newPassword, accountId );
			if (result == 1) {
			   return true;
			} else
				return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
    
	
	
	@Override
	public UserAccDto getUserAccountByMail(String email) {
		return accountRepository.getUserAccountByMail(email);
	}
	
	@Override
	public UserAccDto getUserAccountByAccountId(long accountId) {
		return accountRepository.getUserAccountByAccountId(accountId);
	}

	@Override
	public Accounts getAccountByMail(String email) {
		return accountRepository.getAccountByMail(email);
	}
	
	@Override
	public <S extends Accounts> Optional<S> findOne(Example<S> example) {
		return accountRepository.findOne(example);
	}

	@Override
	public Page<Accounts> findAll(Pageable pageable) {
		return accountRepository.findAll(pageable);
	}

	@Override
	public List<Accounts> findAll() {
		return accountRepository.findAll();
	}

	@Override
	public List<Accounts> findAll(Sort sort) {
		return accountRepository.findAll(sort);
	}

	@Override
	public List<Accounts> findAllById(Iterable<Long> ids) {
		return accountRepository.findAllById(ids);
	}

	@Override
	public Optional<Accounts> findById(Long id) {
		return accountRepository.findById(id);
	}

	@Override
	public <S extends Accounts> List<S> saveAll(Iterable<S> entities) {
		return accountRepository.saveAll(entities);
	}

	@Override
	public void flush() {
		accountRepository.flush();
	}

	@Override
	public <S extends Accounts> S saveAndFlush(S entity) {
		return accountRepository.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Long id) {
		return accountRepository.existsById(id);
	}

	@Override
	public <S extends Accounts> List<S> saveAllAndFlush(Iterable<S> entities) {
		return accountRepository.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Accounts> Page<S> findAll(Example<S> example, Pageable pageable) {
		return accountRepository.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Accounts> entities) {
		accountRepository.deleteInBatch(entities);
	}

	@Override
	public <S extends Accounts> long count(Example<S> example) {
		return accountRepository.count(example);
	}

	@Override
	public <S extends Accounts> boolean exists(Example<S> example) {
		return accountRepository.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Accounts> entities) {
		accountRepository.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return accountRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		accountRepository.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Long> ids) {
		accountRepository.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Accounts entity) {
		accountRepository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		accountRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		accountRepository.deleteAllInBatch();
	}

	@Override
	public Accounts getOne(Long id) {
		return accountRepository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Accounts> entities) {
		accountRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		accountRepository.deleteAll();
	}

	@Override
	public Accounts getById(Long id) {
		return accountRepository.getById(id);
	}

	@Override
	public <S extends Accounts> List<S> findAll(Example<S> example) {
		return accountRepository.findAll(example);
	}

	@Override
	public <S extends Accounts> List<S> findAll(Example<S> example, Sort sort) {
		return accountRepository.findAll(example, sort);
	}

	@Override
	public boolean updateUserInfo(UserAccDto useracc) {

		return false;
	}

//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		// TODO Auto-generated method stub
//		Accounts account = this.getAccountByMail(username);
//		if (account == null)
//			throw new UsernameNotFoundException("User này không tồn tại!");
//
//		HashSet<GrantedAuthority> auth = new HashSet<>();
//		auth.add(new SimpleGrantedAuthority(account.getRole().toString()));
//		return new org.springframework.security.core.
//				userdetails.User(account.getMail(), account.getPassword(), auth);
//	}

}
