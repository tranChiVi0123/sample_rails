# ruby_on_rails_basic  
## Chương_1 Xây dựng cài đặt ban đầu 
1. Tạo một project mới sau khi cài đặt xong rails  
    > rails new Project  
2. Bật server  
    > rails server  
    or  
    > rails s  
3. *fix lỗi đầu tiên ( lỗi phiên bản được lỗi trong **Gemfile**)*  
    > Gemfile được tạo thông qua bundle:  **bundle install**
4. Mô hình MVC trong rails:  
  _Các tiêu chuẩn Rails ứng dụng cấu trúc có một thư mục ứng dụng được gọi app/, trong đó bao gồm các thư mục con gọi **models**, **views**và **controllers**.Đây là một gợi ý rằng Rails tuân theo mẫu kiến trúc mô hình (MVC), thực thi một sự tách biệt giữa dữ liệu trong ứng dụng (như thông tin người dùng) và mã được sử dụng để hiển thị nó, đây là cách cấu trúc phổ biến giao diện người dùng đồ họa (GUI)._  

5. Hello world!  
   Trong thư mục *app/controllers/application_controller.rb*  
   > class ApplicationController < ActionController::Base  
   > protect_from_forgery with: :exception  
   > def hello  
   >    render html: "hello, world!"  
   > end  
   >end
     
   Mở router trong *config/routes.rb*  
   > root 'application#hello'  
 6. Làm việc với git:  
    **Tham khảo thêm tại:** http://rogerdudler.github.io/git-guide/index.vi.html  
 7. Heroku  
      *Heroku là một nền tảng được lưu trữ được xây dựng dành riêng cho việc triển khai Rails và các ứng dụng web khác. Heroku làm cho việc triển khai các ứng dụng Rails dễ dàng một cách lố bịch miễn là mã nguồn của bạn nằm dưới sự kiểm soát phiên bản với Git.*  

___  
      
## Chương_2  Một app đơn giản sơ bộ về sự hoạt đông của mô hình MVC  
   #Tìm hiểu các thư mục trong Rails  
   **app** : Đây là thư mục quan trọng nhất của project vì đây là nơi chứa phần lớn source code của ứng dụng, cũng là nơi mà bạn sẽ thao tác nhiều nhất trong quá trình phát triển ứng dụng Rails.*Thư mục này chứa các thư mục con* > controller : chứa các tập tin controller làm nhiệm vụ điều hướng các luồng chạy của ứng dụng. Các file controller bản chất là các file ruby nên có phần mở rộng .rb > models: là nơi chứa các đối tượng chính trong ứng dụng Rails, các model khi được tạo ra từ câu lệnh ' $ rails generate models '  
   ~~




  
___  
## Chương_3 Các trang tĩnh  
   1. Sử dụng markdown để viết README  
        ' https://gsviec.com/blog/huong-dan-su-dung-markdown '  
   2. Sau khi hoàn thành xong bất cứ tác vụ nào luôn nhớ commit và check nhật kí thường xuyên  
       ` $ git log ` 
       ` $ heroku logs `  
   3. Tạo một staic page  
     -Tạo và hủy controller StaticPages     
        ` $ rails generate controller StaticPages home help. `  
        ` $ rails destroy  controller StaticPages home help. `  
     -Tạo và hủy Model  
        ` $ rails generate model User name:string email:string. ` 
        ` $ rails detroy Model User `  
     -Custom static pages  
       ' app/views/static_pages/home.html.erb '
       ' app/views/static_pages/help.html.erb '
    
   4. Router static pages  
    -Trong config/routes.rb  
      >  get  'static_pages/home'
      >  get  'static_pages/help'.  
    -Trên browser 
      > localhost:3000/static_pages/help.  
   5. Sữ dụng bộ test của rails  
    ` $ rails test`  
    ->
   6. Dùng yeild để chèn tittle là cái cũ.  
     > <% provide(:title, 'Home')%>  
     > ~  
     > <% yield(:title)%> 
    
   7.router người dẫn dường của rails *config/router.rb*  
       '$ get 'static_pages/home' '    
  ___
  
       
## Chương_4 Sự ràng buộc của ruby với rails     
___  

## Chương_5 Layout với HTML5  
   1. Sử dụng HTML5 định nghĩa layot  
   2. Rails particals  
   3. CSS và bootrap  
   4 Biết thêm về SASS và SCSS  
   5. Kiểm tra tích hợp mô phỏng hiểu quả trình duyệt  
  
___

## Chương_6 Mô hình hóa người dùng  
   1. Sửa đổi mô hình dữ liệu của ứng dụng  
   2. Active Record đi kèm với một số lượng lớn các phương thức để tạo và thao tác các mô hình dữ liệu.  
   3. Xác nhận bản ghi hoạt động cho phép chúng tôi đặt các ràng buộc trên dữ liệu trong các mô hình của chúng tôi.  
   4. Xác nhận phổ biến bao gồm sự hiện diện, chiều dài và định dạng.  
   5. Biểu thức thông thường là khó hiểu nhưng mạnh mẽ.  
   6. Xác định một chỉ mục cơ sở dữ liệu cải thiện hiệu quả tra cứu trong khi cho phép thực thi tính duy nhất ở cấp cơ sở dữ liệu.  
   7. Chúng ta có thể thêm mật khẩu an toàn vào mô hình bằng has_secure_passwordphương thức tích hợp sẵn.  
   
___  

## Chương_7 Đăng kí  
   1. Rails hiển thị thông tin gỡ lỗi hữu ích thông qua debugphương thức.  
   2. Sass mixins cho phép một nhóm các quy tắc CSS được gói và sử dụng lại ở nhiều nơi.  
   3. Rails đi kèm với ba môi trường tiêu chuẩn: development, test, và production.  
   4. Chúng tôi có thể tương tác với người dùng dưới dạng tài nguyên thông qua một bộ URL REST tiêu chuẩn.  
   5. Gravatars cung cấp một cách thuận tiện để hiển thị hình ảnh để đại diện cho người dùng.  
   6. Trình form_fortrợ giúp được sử dụng để tạo các biểu mẫu để tương tác với các đối tượng Bản ghi hoạt động.  
   7. Lỗi đăng ký sẽ hiển thị trang người dùng mới và hiển thị các thông báo lỗi được xác định tự động bởi Active Record.  
   8. Rails cung cấp flashnhư một cách tiêu chuẩn để hiển thị các tin nhắn tạm thời.  
   9. Đăng ký thành công tạo người dùng trong cơ sở dữ liệu và chuyển hướng đến trang hiển thị người dùng và hiển thị thông báo chào mừng.  
   10.  Cấu hình ứng dụng sản xuất của mình để sử dụng SSL để liên lạc an toàn và Puma cho hiệu suất cao.  
   
   
    
     
   
   
      

        
  
      
    

