# FirebaseLoginSample

</br>

## 1. 註冊Firebase，新增專案

1. 使用Google帳號，並登入[Firebase](https://firebase.google.com)

</br>

2. 點擊 Get started -> 建立新專案

![Get Started](Pictures/GetStarted.png)

</br>

3. 設定專案名稱，選擇國家 -> 建立專案

![Add project](Pictures/AddProject.png)

</br>

4. 選取，將 Firebase 加入您的iOS應用程式

![將 Firebase 加入您的iOS應用程式](Pictures/AddFirebaseToiOS.png)

</br>

5. 將專案的 bundle id 和 Firebase 作連結

iOS 繫結 ID 欄位必須和 XCode 專案上的 bundle id 一致 -> 點選新增應用程式

![新增](Pictures/AddFirebaseToiOS2.png)

</br>

6. 新增 GoogleService-Info.plist 到 iOS 專案的根目錄裡

![新增Google Service](Pictures/AddGoogleService.png)

</br>

7. 新增Pod

    7.1 下指令 *pod init* 來新增PodFile

    7.2 在podfile 裡頭新增 1. Firebase/Core 2. Firebase/Auth

    7.3 ![PodFile](Pictures/PodInstall.png)

</br>

- 下指令 *pod install* 來安裝Firebase SDK

8. 在AppDelegate 初始化Firebase，並在有用到Firebase的地方都要import Firebase, import FirebaseAuth

![Init Firebase](Pictures/AppDelegate.png)

</br>

9. 啟用Firebase Authentication 服務

    9.1 ![選擇 Authentication](Pictures/initFirebase1.png)
    
    9.2 ![設定登入方式](Pictures/initFirebase2.png)
    
    9.3 ![點選電子郵件/密碼](Pictures/initFirebase3.png)

    9.4 ![啟用電子郵件/密碼](Pictures/initFirebase4.png)
    
</br>    
    
## 2. 在iOS專案實作註冊











