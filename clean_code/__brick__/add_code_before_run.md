add this code before close android 
 
 for Java 
android {



   flavorDimensions "version"
    productFlavors {
        dev {
            dimension "version"
            applicationIdSuffix ".dev"
            versionNameSuffix "-dev"
        }
        staging {
            dimension "version"
            applicationIdSuffix ".staging"
            versionNameSuffix "-staging"
        }
        production {
            applicationIdSuffix ".production"
            dimension "version"
        }
}
}

for kotlin

 compileOptions {
        ...
        ...
        isCoreLibraryDesugaringEnabled = true
    }

android {
    ...
    ...
    ...

     flavorDimensions += "version"

    productFlavors {
        create("dev") {
            dimension = "version"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
        }
        create("staging") {
            dimension = "version"
            applicationIdSuffix = ".staging"
            versionNameSuffix = "-staging"
        }
        create("production") {
            dimension = "version"
           
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4")  
} 
