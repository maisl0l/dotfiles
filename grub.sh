#!/bin/bash
grub-install --target=i386-efi --efi-directory=/boot --bootloader-id=GRUB && grub-mkconfig
