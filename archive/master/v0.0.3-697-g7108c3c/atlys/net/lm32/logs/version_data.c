
#ifndef PLATFORM_ATLYS
#error "Version mismatch - PLATFORM_ATLYS not defined!"
#endif
const char* board = "atlys";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "7108c3c31abf8f244bcd5f88577ebdbc564a3d2a";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-697-g7108c3c-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

