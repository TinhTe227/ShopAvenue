function dangkitaikhoan() {
    // Lấy các phần tử của biểu mẫu
    var email = document.getElementsByName("email")[0].value;
    var password = document.getElementsByName("password")[0].value;
    var cfpassword = document.getElementsByName("cfpassword")[0].value;

    // Reset thông báo lỗi trước đó
    document.getElementById("error_email").innerText = "";
    document.getElementById("error_password").innerText = "";
    document.getElementById("error_cfpassword").innerText = "";

    // Quy tắc validation
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var passwordMinLength = 8;

    var isValid = true;

    // Kiểm tra email
    if (!emailRegex.test(email)) {
        document.getElementById("error_email").innerText = "Địa chỉ email không hợp lệ";
        isValid = false;
    }

    // Kiểm tra mật khẩu
    if (password.length < passwordMinLength) {
        document.getElementById("error_password").innerText = "Mật khẩu phải có ít nhất " + passwordMinLength + " ký tự";
        isValid = false;
    }

    // Kiểm tra mật khẩu xác nhận
    if (password !== cfpassword) {
        document.getElementById("error_cfpassword").innerText = "Mật khẩu xác nhận không khớp";
        isValid = false;
    }

    // Nếu tất cả các trường đều hợp lệ, tiến hành gửi biểu mẫu
    if (isValid) {

        document.getElementById("error_email").innerText = "";
        document.getElementById("error_password").innerText = "";
        document.getElementById("error_cfpassword").innerText = "";
    }
}

// Hàm để xóa thông báo lỗi khi người dùng nhập vào các trường đầu vào
function keyupInput(inputName) {
    document.getElementById("error_" + inputName).innerText = "";
}
