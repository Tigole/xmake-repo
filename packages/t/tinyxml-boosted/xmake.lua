package("tinyxml-boosted")
    set_kind("library", {headeronly = true})
    set_description("Objects container implementation based on Wookash &amp; Anton Mikhailov discussion https://www.youtube.com/watch?v=-m7lhJ_Mzdg")
    set_license("MIT")
    set_homepage("https://github.com/Tigole/TinyXML_Boosted.git")

    add_urls("https://github.com/Tigole/TinyXML_Boosted.git")
    add_versions("1.x", "98260a3c69acebaf020b4272b5da497a6ed482a7")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
