# 🖨️ ft_printf – 42 Project

Reimplementation of the standard `printf` function in C.  
This project focuses on formatting and printing data with full control over output, conversions, and flags.

---

## 📌 Description

`ft_printf` is a simplified version of the standard C function `printf`.  
It supports a subset of the original specifiers and handles formatted output to the standard output using only low-level functions like `write`.

---

## 🎯 Supported Conversions

| Specifier | Description                |
|----------:|----------------------------|
| `%c`      | Character                  |
| `%s`      | String                     |
| `%p`      | Pointer address (hex)      |
| `%d`      | Signed decimal integer     |
| `%i`      | Signed decimal integer     |
| `%u`      | Unsigned decimal integer   |
| `%x`      | Lowercase hexadecimal      |
| `%X`      | Uppercase hexadecimal      |
| `%%`      | Percent sign               |

---

## 📂 Project Structure
```
ft_printf/
├── Makefile
├── README.md
├── ft_printf.c
├── ft_printf.h
├── ft_putchar.c
├── ft_puthexa.c
├── ft_putnbr.c
├── ft_putptr.c
├── ft_putstr.c
├── ft_putunbr.c
└── libft
```
---

## 🔧 Build Instructions

To compile the library:
```
make
```
To clean:

```
make clean      # Removes object files
make fclean     # Removes object files and libftprintf.a
make re         # Rebuild from scratch
```

Compile example:

```
gcc -Wall -Wextra -Werror main.c ft_printf.a
```
---
## 🧠 What I Learned
Handling variadic functions using stdarg.h

Parsing and managing format strings

Printing values with write() without printf()

Managing different data types (int, unsigned, hex, pointer…)

Converting numbers to strings manually (itoa, base conversion)

Dealing with memory layout and edge cases like NULL strings or 0 values
---
## 👨‍💻 Author
**Mehdi Adel Achouba**  
**42 Paris – Login: machouba**
