# 🐙 Octopus - راه‌انداز ساده سرور PHP با رابط گرافیکی

<img width="1024" height="1024" alt="octopus" src="https://github.com/user-attachments/assets/f9b618ce-20a7-4393-b30d-6e54ec1b8e51" />

Octopus یک ابزار سبک و ساده برای اجرای نسخه‌های مختلف PHP در ویندوز است. این پروژه به کمک VBScript و Batch ساخته شده و امکان اجرای سرور محلی PHP و ابزار phpMyAdmin را تنها با چند کلیک فراهم می‌کند.

## 📦 ساختار پروژه

```
📁 octopus/
├── php-8.2.0-nts-Win32-vs16-x64/     ← نسخه PHP مورد استفاده
├── phpMyAdmin/                       ← پوشه phpMyAdmin برای مدیریت پایگاه داده
├── index.php                         ← فایل تست اجرا
├── index.html                        ← صفحه پیش‌فرض
├── octopus.vbs                       ← رابط گرافیکی برای انتخاب نسخه و پورت
├── run.bat                           ← اجرای دستی نسخه پیش‌فرض
├── server-launcher.bat              ← اسکریپت اصلی برای اجرای سرور
├── v.php                             ← فایل نمایشی اطلاعات PHP
└── README.md                         ← این فایل
```

## 🚀 نحوه استفاده

1. ابتدا فایل `octopus.vbs` را اجرا کنید.
2. در پنجره ظاهر شده:
   - یک نسخه PHP از لیست انتخاب کنید (در صورت داشتن چند نسخه).
   - شماره پورت دلخواه (مثلاً 8000) را وارد کنید.
   - دکمه Enter (OK) را بزنید.
3. مرورگر شما به صورت خودکار باز می‌شود و سرور محلی اجرا می‌گردد.

## 🔄 افزودن نسخه جدید PHP

برای افزودن نسخه جدید PHP:

1. نسخه مورد نظر PHP را از سایت رسمی [php.net](https://windows.php.net/download) دانلود کنید.
2. آن را در پوشه اصلی پروژه اکسترکت کنید. به‌عنوان مثال:
   ```
   php-8.3.0-nts-Win32-vs16-x64/
   ```
3. Octopus به صورت خودکار پوشه‌های PHP را تشخیص داده و در منو نمایش می‌دهد.

## 🛠️ نیازمندی‌ها

- سیستم‌عامل: ویندوز (7 به بالا)
- فایل‌های PHP ( ورژن های مختلف )
- Windows Script Host (فعال به‌صورت پیش‌فرض در ویندوز)

## 💡 نکات

- برای جلوگیری از خطا، فقط نسخه‌های NTS (بدون Thread Safety) را استفاده کنید.
- برای اجرای صحیح phpMyAdmin، مطمئن شوید ext‌های مربوط به mysqli در فایل `php.ini` فعال شده باشد.
- در مسیر phpMyAdmin فایل index.php  را اجرا کنید .

## 📌 مثال برای اجرای دستی (بدون رابط گرافیکی)

```bat
server-launcher.bat 
```

## 📚 مجوز

این پروژه متن‌باز و رایگان است. می‌توانید آن را توسعه داده یا با دوستان خود به اشتراک بگذارید.

---
با ❤️ از تیم توسعه Octopus - سجاد افتخاری - [https://sajjadef.ir/]([url](https://sajjadef.ir/))




# 🐙 Octopus - A Simple PHP Server Launcher with GUI

<img width="1024" height="1024" alt="octopus" src="https://github.com/user-attachments/assets/f9b618ce-20a7-4393-b30d-6e54ec1b8e51" />

**Octopus** is a lightweight and easy-to-use tool for running different versions of PHP on Windows. Built with VBScript and Batch, it allows you to launch a local PHP server and phpMyAdmin with just a few clicks.

## 📦 Project Structure

📁 octopus/
├── php-8.2.0-nts-Win32-vs16-x64/ ← PHP version in use
├── phpMyAdmin/ ← phpMyAdmin folder for database management
├── index.php ← Test file
├── index.html ← Default landing page
├── octopus.vbs ← GUI interface for selecting PHP version and port
├── run.bat ← Manually launch the default version
├── server-launcher.bat ← Main script to launch the server
├── v.php ← Displays PHP info
└── README.md ← This file


## 🚀 How to Use

1. Run the `octopus.vbs` file.
2. In the pop-up window:
   - Select a PHP version from the list (if you have multiple versions).
   - Enter your desired port (e.g., 8000).
   - Press **Enter (OK)**.
3. Your default browser will open automatically, and the local server will start.

## 🔄 Adding a New PHP Version

To add a new PHP version:

1. Download your desired version from the official [php.net](https://windows.php.net/download) website.
2. Extract it into the root directory of the project, for example:

```bat
php-8.3.0-nts-Win32-vs16-x64/
```


4. Octopus will automatically detect the folder and show it in the GUI menu.

## 🛠️ Requirements

- OS: Windows (7 or later)
- PHP files (any version)
- Windows Script Host (enabled by default in Windows)

## 💡 Tips

- To avoid issues, only use **NTS (Non-Thread-Safe)** versions of PHP.
- To run phpMyAdmin correctly, make sure `mysqli` and related extensions are enabled in the `php.ini` file.
- Navigate to the `phpMyAdmin` folder and run `index.php`.

## 📌 Manual Execution (Without GUI)

```bat
server-launcher.bat
```
📚 License
This project is open-source and free to use. Feel free to improve it or share it with your friends.

With ❤️ from the Octopus Dev Team – Sajjad Eftekhari – [https://sajjadef.ir/]([url](https://sajjadef.ir/))
