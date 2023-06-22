# schoolRISCV

Tiny RISCV CPU. Originally based on Sarah L. Harris MIPS CPU ("Digital Design and Computer Arhitecture" by David Money Harris and Sarah L Harris) and [schoolMIPS](https://github.com/MIPSfpga/schoolMIPS) project. Supports only a subset of RISCV commands.

![schoolRISCV](https://raw.githubusercontent.com/wiki/zhelnio/schoolRISCV/img/schoolRISCV.gif)

## Docs

[HDL Tools Install](install/readme.md)

[Video (Russian)](https://www.youtube.com/watch?v=w1F6aHfiuZ0&list=PL7J5ZgBGsxn6rquSuWO07kUk_YJrQnXec)

[Slides (Russian)](https://raw.githubusercontent.com/wiki/zhelnio/schoolRISCV/doc/schoolRISCV_slides_ru.pdf)

[New Instruction Example (Russian)](https://raw.githubusercontent.com/wiki/zhelnio/schoolRISCV/doc/schoolRISCV_steps_ru.pdf)

[RISC-V ISA Specification](https://raw.githubusercontent.com/wiki/zhelnio/schoolRISCV/doc/riscv-spec-20191213.pdf)

## От автора форка

Если у вас Linux, то можно просто создать проект в Vivado и импортировать файлы на Verilog, а для hex-файлов достаточно будет gcc для RISC-V, JRE (RARS) и make, чтобы всё это собирать. И никакой головной боли с виртуалками, Icarus, Quartus и прочим.

NB: RARS не умеет встраивать слова в код на языке ассемблера, поэтому в 4-й программе вместо него используется gcc. Зачем оно понадобилось, читайте здесь: [[extension.md]](https://github.com/visvaldas01/schoolRISCV/blob/00_simple/program/04_math/extension.md).
