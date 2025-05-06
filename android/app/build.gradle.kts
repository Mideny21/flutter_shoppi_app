plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.shoppi"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.shoppi"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }

     flavorDimensions "app"
    productFlavors {
      production {
        dimension "app"
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        resValue "string", "app_name", "Shoppi"
      }
     staging {
        applicationIdSuffix ".staging"
        dimension "app"
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        resValue "string", "app_name", "[Staging]Shoppi"
      }
     dev {
        applicationIdSuffix ".dev"
        dimension "app"
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        resValue "string", "app_name", "[DEV]Shoppi"
     }
    }
}

flutter {
    source = "../.."
}
