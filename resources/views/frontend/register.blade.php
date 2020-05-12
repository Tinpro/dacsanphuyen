<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
    <base href="{{asset('backend')}}/">
    <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Registration :: PYU</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font.css" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
    <div class="reg-w3">
        <div class="w3layouts-main">
            <h2>Register Now</h2>

            @if(Session('register_success'))
            <div class="alert alert-success">
                {{Session('register_success')}}
                <a href="{{route('getLogin')}}">Đăng nhập</a></p>
            </div>
            @endif
            @if(Session('register_fail'))
            <div class="alert alert-danger">
                {{Session('register_fail')}}

            </div>
            @endif
            <form action="{{route('postRegister')}}" method="post" role="form">
                @csrf
                <input type="text" class="ggg" name="name" placeholder="Tên" value= "{{old('name')}}">
                @if ($errors->has('name'))
                <p class="text-danger">{{ $errors->first('name') }}</p>
                @endif
                <input type="email" class="ggg" name="email" placeholder="E-MAIL" value="{{old('email')}}">
                @if ($errors->has('email'))
                <p class="text-danger">{{ $errors->first('email') }}</p>
                @endif
                <input type="text" class="ggg" name="address" placeholder="Địa chỉ" value="{{old('address')}}">
                @if ($errors->has('address'))
                <p class="text-danger">{{ $errors->first('address') }}</p>
                @endif
                <input type="text" class="ggg" name="phone" placeholder="Số điện thoại" value="{{old('phone')}}">
                @if ($errors->has('phone'))
                <p class="text-danger">{{ $errors->first('phone') }}</p>
                @endif
                <input type="password" class="ggg" name="password" placeholder="Mật khẩu">
                @if ($errors->has('password'))
                <p class="text-danger">{{ $errors->first('password') }}</p>
                @endif
                <input type="password" class="ggg" name="repassword" placeholder="Nhập lại mật khẩu">
                @if ($errors->has('repassword'))
                <p class="text-danger">{{ $errors->first('repassword') }}</p>
                @endif
                <h4><input name="checkbox" type="checkbox" value="1" />Tôi đồng ý với điều khoản dịch vụ và chính sách bảo mật</h4>

                <div class="clearfix"></div>
                <input type="submit" value="Đăng ký" name="register">
            </form>
            <p>Đã có tài khoản?<a href="{{route('getLogin')}}">Đăng nhập</a></p>
        </div>
    </div>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/scripts.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="js/jquery.scrollTo.js"></script>
</body>
</html>
