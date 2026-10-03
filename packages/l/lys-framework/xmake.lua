package("lys-framework")
    set_kind("library")
    set_description("Lys Framwork")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.0", "c728193e4df4d44114b9c5e598d413e9be3ef49f")

    add_configs("backend", {values = {"sfml", "raylib"}})

    on_load(function(package)
        local backend = package:config("backend")

        if backend == "sfml" then
            package:add("deps", "sfml")
        elseif backend == "raylib" then
            package:add("deps", "raylib")
        end

        package:add("deps", "tinyxml-boosted")

    end)

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)