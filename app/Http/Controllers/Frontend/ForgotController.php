<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\ProfileUserRequest;
use App\Http\Requests\ResetPasswordRequest;
use App\User;
use Carbon\Carbon;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Mail;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require '../vendor/autoload.php';

class ForgotController extends Controller
{
    //
    public function getForgot()
    {
        return view('frontend.forgotpassword');
    }
    public function postForgot(Request $request)
    {
        $email = $request->email;

        $data = User::where('email', $email)->first();

        if ($data) {
            $code = bcrypt(md5(time() . $email));

            $data->code = $code;
            $data->timecode = Carbon::now();
            $data->save();

            $url = route('getResetPassword', ['code' => $data->code, 'email' => $email]);
            $data = [
                'route' => $url
            ];

            // $body = file_get_contents(dirname(__DIR__).'../../../../resources/views/frontend/page/email.blade.php');
            $body = view('frontend.page.email_resetPassword',$data, [])->render();
            $mail = new PHPMailer(true);
            try {
                //Server settings
                $mail->SMTPDebug = 0;                      // Enable verbose debug output
                $mail->isSMTP();                                            // Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
                $mail->Username   = 'luongbaotin2020@gmail.com';                     // SMTP username
                $mail->Password   = 'Tinyeuthao123';                               // SMTP password
                $mail->SMTPSecure =  'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

                //Recipients
                $mail->setFrom('luongbaotin@gmail.com', 'Đặc sản Phú Yên');
                $mail->addAddress($email);     // Add a recipient
                $mail->addCC('luongbaotin2020@gmail.com');
                $mail->CharSet = 'UTF-8';
                // Content
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = 'Mã lấy lại mật khẩu';
                $mail->Body    = $body;
                $mail->AltBody = '';
                $mail->send();
                echo 'Đã gửi đơn xác nhận';
            } catch (Exception $e) {
                echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
            return back()->with('forgot_success', 'Mã lấy lại mật khẩu đã được gửi tới email của bạn');
        } else {
            return back()->with('forgot_fail', 'Không tồn tại email này, vui lòng kiểm tra');
        }
    }
    public function getResetPassword(Request $request)
    {
        $code = $request->code;
        $email = $request->email;

        $data = User::where([
            'code' => $code,
            'email' => $email
        ])->first();
        if (!$data) {
            return redirect()->route('getForgot')->with('danger', 'Xin lỗi! Đường link lấy lại mật khẩu không đúng, xin vui lòng thử lại');
        }
        return view('frontend.page.reset_password');
    }
    public function postResetPassword(ResetPasswordRequest $request)
    {
        if ($request->newpassword) {
            $code = $request->code;
            $email = $request->email;

            $data = User::where([
                'code' => $code,
                'email' => $email
            ])->first();
            if (!$data) {
                return redirect()->route('getForgot')->with('danger', 'Xin lỗi! Đường link lấy lại mật khẩu không đúng, xin vui lòng thử lại');
            }
            $data->password = bcrypt($request->newpassword);
            $data->save();

            return redirect()->route('getLogin')->with('reset_success','Mật khẩu đã được đổi thành công, mời bạn đăng nhập');
        }
    }
}
