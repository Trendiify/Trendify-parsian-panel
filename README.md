# 🚀 Trendify Panel

**Trendify Panel** is the management panel component of the Trendify PasarGuard platform.

این Repository مربوط به بخش **Panel** پلتفرم Trendify PasarGuard است.

---

## ⚡ Quick Install | نصب سریع

<div align="center">

<a href="https://trendify-installer-pasargad.barcelona-campp.workers.dev/" target="_blank">
  <img src="https://img.shields.io/badge/🚀%20Install%20Trendify-5865F2?style=for-the-badge&logo=cloudflare&logoColor=white" alt="Install Trendify">
</a>

</div>

### 🇬🇧 English

The easiest way to start is by using the **Trendify Installer**.

👉 **[🚀 Open Trendify Installer](https://trendify-installer-pasargad.barcelona-campp.workers.dev/)**

The installer automatically creates:

* A random Node repository
* A random Panel repository
* A Cloudflare Worker
* The required repository contents

After installation, you can continue with the manual PasarGuard and Railway configuration.

---

### 🇮🇷 فارسی

ساده‌ترین روش برای شروع استفاده از **Trendify Installer** است.

👉 **[🚀 ورود به Trendify Installer](https://trendify-installer-pasargad.barcelona-campp.workers.dev/)**

Installer به‌صورت خودکار ایجاد می‌کند:

* Repository تصادفی Node
* Repository تصادفی Panel
* Cloudflare Worker
* محتوای موردنیاز Repositoryها

بعد از نصب، می‌توانید تنظیمات **PasarGuard و Railway** را به‌صورت دستی ادامه دهید.

---

## 🧩 Architecture | معماری

```text
                    Trendify
                       │
              ┌────────┴────────┐
              │                 │
          Panel               Node
              │                 │
              └────────┬────────┘
                       │
                  PasarGuard
                       │
                     Xray
                       │
                    Client
```

---

## 🎯 Purpose | هدف

### 🇬🇧 English

Trendify provides a simplified deployment workflow around the PasarGuard ecosystem.

The project separates the initial deployment from the actual server configuration, allowing users to deploy the required repositories and Worker first and configure their infrastructure afterward.

### 🇮🇷 فارسی

Trendify یک روش ساده‌تر برای راه‌اندازی زیرساخت مبتنی بر PasarGuard فراهم می‌کند.

در این پروژه، مرحله نصب اولیه از تنظیمات اصلی سرور جدا شده است تا ابتدا Repositoryها و Worker موردنیاز ایجاد شوند و سپس تنظیمات زیرساخت انجام شود.

---

## 🚀 Installer

The Trendify Installer requires:

1. GitHub Personal Access Token
2. Cloudflare API Token
3. Cloudflare Account ID

سپس با یک کلیک عملیات نصب اولیه انجام می‌شود.

### Start Installation

**[🚀 Install Trendify](https://trendify-installer-pasargad.barcelona-campp.workers.dev/)**

---

## ⚙️ Manual Configuration | تنظیمات دستی

After installation, the following components are configured manually:

پس از نصب، بخش‌های زیر به‌صورت دستی تنظیم می‌شوند:

* Railway
* PasarGuard
* Node
* Xray
* Hosts
* Users
* VLESS
* Client configuration

---

## 🔐 Security | امنیت

Never publish your GitHub or Cloudflare tokens.

هرگز GitHub Token یا Cloudflare API Token خود را در Repository، README یا فایل‌های عمومی قرار ندهید.

Tokens should only be entered into the official Trendify Installer.

توکن‌ها فقط باید داخل Installer وارد شوند.

---

## 🌐 Trendify

**Trendify — PasarGuard Infrastructure**

ساخته‌شده برای ساده‌تر کردن راه‌اندازی زیرساخت PasarGuard.

<div align="center">

### 🚀 Trendify

**Deploy • Configure • Connect**

</div>
