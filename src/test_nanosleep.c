#include <time.h>
int main() {
  struct timespec ts;
  ts.tv_sec = 0;
  ts.tv_nsec = 1000;
  nanosleep(&ts, NULL);
  return 0;
}
