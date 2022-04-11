# TestAppSwiftRust
Questa è la documentazione che ho utilizzato per produrre questo bridge:
https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-06-rust-on-ios.html

Il problema credo sia questo: 
https://github.com/dart-lang/ffi/issues/75
XCode's default "standard architecture (arm64, armv7)" and ".a" files do not contain "armv7", and the new version of Rust has eliminated armv7.

Ho un problema che non riconosce i miei comandi appartenenti al bridge: Undefined symbol


Nella ContentView va messo questo codice: 

    let rustGreetings = RustGreetings()
    
    print("\(rustGreetings.sayHello(to: "world"))")
