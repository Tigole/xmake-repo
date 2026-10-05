package("lys-framework")
    set_kind("library")
    set_description("Lys Framework")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.1", "a42f200d8cd75b80230651058cc8b8220a85d5d3")

    add_configs("backend", {values = {"sfml", "raylib"}})

    on_load(function(package)
        local backend = package:config("backend")
        print("backend: " .. backend)
        
        if backend == "sfml" then
            package:add("deps", "sfml")
            package:add("defines", "LYS_CONFIG_BACKEND_SFML", {public = true})
        elseif backend == "raylib" then
            package:add("deps", "raylib")
            package:add("defines", "LYS_CONFIG_BACKEND_RAYLIB", {public = true})
        end

        package:add("deps", "tinyxml-boosted")
        package:add("defines", "LYS_BUILD_STATIC")
        print("defines: " .. package:get("defines"))

    end)

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)