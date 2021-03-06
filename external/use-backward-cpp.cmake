function(get_all_targets _result _dir)
    get_property(_subdirs DIRECTORY "${_dir}" PROPERTY SUBDIRECTORIES)
    foreach(_subdir IN LISTS _subdirs)
        get_all_targets(${_result} "${_subdir}")
    endforeach()
    get_property(_sub_targets DIRECTORY "${_dir}" PROPERTY BUILDSYSTEM_TARGETS)
    set(${_result} ${${_result}} ${_sub_targets} PARENT_SCOPE)
endfunction()

function(enable_backward_cpp)
    add_subdirectory(external/backward-cpp)
    get_all_targets(TARGET_LIST "${CMAKE_SOURCE_DIR}")
    message("-- Target list: ${TARGET_LIST}")
    list(FILTER TARGET_LIST EXCLUDE REGEX "backward_object|backward|coverage_report|fmt|fmt-header-only|link_target")
    foreach(target IN ITEMS ${TARGET_LIST})
        add_backward(${target})
        target_sources(${target} PUBLIC ${BACKWARD_ENABLE})
    endforeach()
endfunction()

string(TOLOWER "${CMAKE_BUILD_TYPE}" cmake_build_type_tolower)
if ("${cmake_build_type_tolower}" STREQUAL "debug")
    #enable_backward_cpp()
endif ()
