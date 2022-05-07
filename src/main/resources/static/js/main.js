const overlay = document.querySelector(".overlay");
const overlaySignIn = document.querySelector(".overlay-form");
const overlaySignUp = document.querySelector(".sign-up-form");
const signUp_CancelBtn = document.querySelector(".sign-up-cancel");
const sigUp_ContinueBtn = document.querySelector(".sign-up-continue");
const signIn_Btn = document.querySelector(".overlay-form-button button")
//Load Avatar_signUp
const avatarBlock = document.querySelector(".form-content-avatar-block");
const avatarImgBlock = document.querySelector(".form-content-avatar img");
const avatar_addIcon = document.querySelector(".form-content-avatar-block label i");
avatar_addIcon.onclick = function () {
  $('document').ready(function () {
    $("#imgload").change(function () {
      if (this.files && this.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          $('#imgshow').attr('src', e.target.result);
        }
        reader.readAsDataURL(this.files[0]);
      }
    });
  });
  avatarBlock.classList.add("none-block");
  avatarImgBlock.classList.remove("none-block");
}


//Xử lí ẩn hiện overlay
overlay.onclick = function (e) {
  if ((!e.target.closest(".overlay-form")) && !(e.target.closest(".sign-up-form"))) {
    overlay.classList.add("none-block");
    console.log("ok");
  }
}

const signUp = document.querySelector(".account-sign-up");
const signIn = document.querySelector(".account-sign-in");
signUp.onclick = function () {
  overlay.classList.remove("none-block");
  overlaySignIn.classList.add("none-block");
  overlaySignUp.classList.remove("none-block");
}
signIn.onclick = function () {
  overlay.classList.remove("none-block");
  overlaySignUp.classList.add("none-block");
  overlaySignIn.classList.remove("none-block");

}

const signInBtn = document.querySelector(".overlay-form-button button");
signInBtn.onclick = function () {
  overlay.classList.add("none-block");
}

const signUpBtn = document.querySelector(".sign-up-form-btn button");
signUpBtn.onclick = function () {
  overlay.classList.add("none-block");
}

const formSignIn_Close = document.querySelector(".overlay-form-header i");
formSignIn_Close.onclick = function () {
  overlay.classList.add("none-block");
}

const formSignUp_Close = document.querySelector(".sign-up-form-content i");
formSignUp_Close.onclick = function () {
  overlay.classList.add("none-block");
}

//INDEX_DETAIL
const heartIconList = document.querySelectorAll(".content-info-title i");
for (let i = 0; i < heartIconList.length; i++) {
  heartIconList[i].onclick = function () {
    if (heartIconList[i].style.color == "") {
      heartIconList[i].style.color = "#ff385c";
      console.log(heartIconList[i].style.color);
      console.log("ok1");
    }
    else if (heartIconList[i].style.color == "rgb(207, 207, 207)") {
      heartIconList[i].style.color = "#ff385c";
      console.log("ok2");
    }
    else if (heartIconList[i].style.color == "rgb(255, 56, 92)") {
      heartIconList[i].style.color = "rgb(207, 207, 207)";
      console.log("ok3");
    }
  }
}

const handleList_btn = document.querySelectorAll(".handle-edit");
console.log(handleList_btn);
var handleInfoListItem;
for (let i = 0; i < handleList_btn.length; i++) {
  handleList_btn[i].onclick = function () {
    handleInfoListItem = handleList_btn[i].parentElement;
    console.log(handleInfoListItem)
    console.log(handleInfoListItem.querySelector("div .handle-value"));
    handleInfoListItem.querySelector("div .handle-value").focus();
  }
}



