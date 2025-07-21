# 🐙 Octopus - راه‌انداز ساده سرور PHP با رابط گرافیکی

<img width="1024" height="1024" alt="octopus" src="https://github.com/user-attachments/assets/f9b618ce-20a7-4393-b30d-6e54ec1b8e51" />

**Octopus** یک ابزار سبک و ساده برای اجرای نسخه‌های مختلف PHP در ویندوز است. این پروژه با استفاده از VBScript و Batch ساخته شده و امکان اجرای سرور محلی PHP و phpMyAdmin را تنها با چند کلیک فراهم می‌کند.

---

⚠️ **هشدار مهم**  
Octopus به تنهایی پایگاه‌داده نصب نمی‌کند. اگر MySQL یا MariaDB روی سیستم شما نصب نیست:

➡️ باید ابتدا نسخه **ZIP** از MySQL را دانلود و اکسترکت کرده و در پوشه `mysql/` قرار دهید.  
لینک دانلود رسمی: [https://dev.mysql.com/downloads/mysql](https://dev.mysql.com/downloads/mysql)

❌ این ابزار از Apache پشتیبانی نمی‌کند. اگر برنامه‌ی PHP شما نیاز به Apache یا `.htaccess` دارد، از XAMPP یا Laragon استفاده کنید.

✅ این برنامه مناسب پروژه‌هایی است که با `PHP CLI` یا ابزارهای سبک مثل `phpMyAdmin` کار می‌کنند.

---

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
-  MySQL ZIP اگر نصب ندارید
- فایل‌های PHP ( ورژن های مختلف )
- Windows Script Host (فعال به‌صورت پیش‌فرض در ویندوز)

## 💡 نکات

- برای جلوگیری از خطا، فقط نسخه‌های NTS (بدون Thread Safety) را استفاده کنید.
- برای اجرای صحیح phpMyAdmin، مطمئن شوید ext‌های مربوط به mysqli در فایل `php.ini` فعال شده باشد.
- `mysqli` و `pdo_mysql` باید در `php.ini` فعال باشند.
- برای اجرای phpMyAdmin از `phpMyAdmin/index.php` استفاده کنید.
- در صورت عدم وجود پایگاه‌داده، فایل `mysqld.exe` اجرا نخواهد شد ❗

---

## 📌 مثال برای اجرای دستی (بدون رابط گرافیکی)

```bat
server-launcher.bat 
```

## 📚 مجوز

این پروژه متن‌باز و رایگان است. می‌توانید آن را توسعه داده یا با دوستان خود به اشتراک بگذارید.

---
با ❤️ از تیم توسعه Octopus - سجاد افتخاری - [https://sajjadef.ir/]([url](https://sajjadef.ir/))



# 🐙 Octopus - Lightweight PHP Server Launcher with GUI

<img width="1024" height="1024" alt="octopus" src="https://github.com/user-attachments/assets/f9b618ce-20a7-4393-b30d-6e54ec1b8e51" />

**Octopus** is a lightweight and portable launcher that allows you to easily run different versions of PHP on Windows. Built using VBScript and Batch, it offers a simple GUI to launch PHP CLI and tools like **phpMyAdmin** with just a few clicks.

---

## ⚠️ Important Notice

- **Octopus does not include MySQL by default.**  
  👉 You need to manually download the **ZIP version** of MySQL from the official website and place it inside the `/mysql` folder:  
  [https://dev.mysql.com/downloads/mysql](https://dev.mysql.com/downloads/mysql)

- ❌ Apache-based apps and `.htaccess` files are **not supported**.  
- ✅ Only CLI PHP scripts and tools like **phpMyAdmin** are supported.

---

## 📁 Project Structure
```
octopus/
├── php-8.2.0-nts-Win32-vs16-x64/ ← Active PHP version folder
├── phpMyAdmin/ ← phpMyAdmin for database management
├── index.php ← Test file
├── index.html ← Default landing page
├── octopus.vbs ← GUI launcher
├── run.bat ← Manual launcher (default version)
├── server-launcher.bat ← Main script to start PHP server
├── v.php ← Displays PHP info
└── README.md ← This file

```
---

## 🚀 How to Use

1. Double-click `octopus.vbs`.
2. In the pop-up window:
   - Select a PHP version from the list.
   - Enter the desired port (e.g., `8000`).
   - Click **OK**.
3. Your default browser will launch the local server automatically.

---

## 🔄 Adding a New PHP Version

1. Download your desired version from [php.net](https://windows.php.net/download).
2. Extract it into the root directory of the project, for example:

php-8.3.0-nts-Win32-vs16-x64/


3. Octopus will automatically detect the folder and display it in the GUI.

---

## 🛠️ Requirements

- Windows 7 or newer  
- PHP NTS (Non-Thread-Safe) builds  
- MySQL (ZIP version if not installed)  
- Windows Script Host (enabled by default)

---

## 💡 Tips

- Always use **NTS** builds of PHP for compatibility.
- Enable `mysqli` and other necessary extensions in your `php.ini` for phpMyAdmin.
- To use phpMyAdmin, navigate to the folder and run `index.php`.

---

## 🖥️ Manual Launch (Without GUI)

You can also launch the default server version using:

```bat
server-launcher.bat
```
## 📚 License
This project is open-source and free to use. Feel free to modify, improve, or share it.

Made with ❤️ by the Octopus Dev Team
Sajjad Eftekhari – https://sajjadef.ir
