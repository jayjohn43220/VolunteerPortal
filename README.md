# VolunteerPortal
This was my project which won the Best PHT Project for the 2023 HSHacks hackathon. 

 ![macOS](https://img.shields.io/badge/os-iOS-blue.svg?style=flat)
 ![Test](https://camo.githubusercontent.com/55e1508d75defa7d658205a949df888cfc46f1fc0c933478c71a7d9bd208029a/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f73776966742d4635344132413f7374796c653d666f722d7468652d6261646765266c6f676f3d7377696674266c6f676f436f6c6f723d7768697465)
## Usage
### Obtain Google App Password 

In order for the email system to work, you will need to follow these steps. You *could* just put in your actual Google password, but for security reasons, I do not recommend it, and if you have 2FA enabled, then simply entering your Google password wouldn't work. Do note that this system may work for other emails, but I only have tried with Gmail.

First, go to [Your Google Account](https://myaccount.google.com), and search for `App Passwords`.
![1](https://user-images.githubusercontent.com/78356048/232664310-bcabc2ad-f721-486f-a923-2d0bf76789e3.png)
It will ask you to enter your password
![image](https://user-images.githubusercontent.com/78356048/232664817-212e59a8-5030-45a0-a764-04209d7e00f3.png)
Next, under the select app dropdown, pick `Other (custom name)` and name it whatever you like and hit generate.
![image](https://user-images.githubusercontent.com/78356048/232665659-84ec8b89-07cd-4073-901d-b5560fd76638.png)
You will now get an app password. Do **NOT** share this with anyone. Keep this handy as you will need it.

### Code
Inside of the `donateViewController.swift`, `veteranViewController.swift`, and `viewController.swift` files, you will find this block of code:
```swift
    let smtp = SMTP(
        hostname: "smtp.gmail.com",     // SMTP server address
        email: "<ENTER DESIRED FROM EMAIL",        // username to login
        password: "<ENTER GOOGLE APP PASSWORD>"            // password to login
    )
```
In the email section, enter in the email you used to get your app password. Next, in the password section, enter in your 16 character password, **NOT** your actual password. Don't forget to remove the `<>`.

Lastly, in the same files, you will also find this line of code
```swift
let fromname = Mail.User(name: "Project Headspace and Timing", email: "<ENTER INITIAL DESIRED FROM EMAIL>")
```
In the email section, enter in  your email. Again, don't forget to remove the `<>`.

## Credits
Email System made possible using [Kitura's Swift-SMTP](https://github.com/Kitura/Swift-SMTP) project.
