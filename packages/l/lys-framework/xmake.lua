package("lys-framework")
    set_kind("library")
    set_description("Lys Framework")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.2", "ef8fcaac2755ed1cfaca8a750275a86a02d270a6")

    add_configs("backend", {values = {"sfml", "raylib"}})

    on_load(function(package)
        local backend = package:config("backend")

        if (backend ~= nil) then
            print("backend: " .. backend)
        end

        if backend == "sfml" then
            --package:add("deps", "sfml", {configs={shared=true}})
            package:add("defines", "LYS_CONFIG_BACKEND_SFML", {public = true})
        elseif backend == "raylib" then
            --package:add("deps", "raylib")
            package:add("defines", "LYS_CONFIG_BACKEND_RAYLIB", {public = true})
        end

        package:add("deps", "tinyxml-boosted")
        package:add("defines", "LYS_BUILD_STATIC")
        print(package:name())
        print(package:get("deps"))

    end)

    on_install(function (package)
        local configs = {}

        configs.backend = package:config("backend")
        --configs.shared = package:config("shared")

        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)