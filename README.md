cub3D Invalid Maps Tester


Automated tester to validate map parsing logic for the 42 School cub3D project, a raycasting 3D engine. This script checks your project’s handling of invalid maps and helps detect parsing errors and memory leaks early.


✅ Features

- Runs a suite of invalid map files against your cub3D executable.

- Validates that no window is opened during execution (ensuring proper error handling).

- Optional Valgrind mode to check for memory leaks.

- Lightweight Bash script, easy to integrate into your workflow.


🔍 Prerequisites

- Your executable must be named cub3D (per project requirements).

- For Valgrind mode, compile without -fsanitize flags.


🚀 Usage

1. Place the contents of this repository next to your cub3D executable.

2. Access the repo and run:
   chmod 777 ./tester.sh; ./tester.sh [valgrind]


📌 Evaluating Results

- Your program must not open a window during the entire run of ./tester.sh.

- If a window appears, your parser is accepting invalid maps, which may cause undefined behavior later.

- Use the valgrind argument to detect leaks. Compiling with -fsanitize flags (outside Valgrind mode) can help catch further issues.
