package("tinyxml-boosted")
    set_kind("library")
    set_description("Wrapper for loading data from xml files using tinyxml as backend")
    set_license("MIT")
    set_homepage("https://github.com/Tigole/TinyXML_Boosted.git")

    add_urls("https://github.com/Tigole/TinyXML_Boosted.git")
    add_versions("1.x", "98260a3c69acebaf020b4272b5da497a6ed482a7")
    add_versions("2.0.0", "955bddbb6cbc734b1cc90e995f4f3c2a8fe7b8a1")

    on_load(function (package)
        package:add("deps", "tinyxml 2.6.2")
    end)

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        package:add("deps", "tinyxml 2.6.2")
        print(package:name())
        print(package:get("deps"))
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
