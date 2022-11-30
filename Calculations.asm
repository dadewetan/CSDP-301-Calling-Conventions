.386
.model flat,c
.code


CalculateSum       proc
                   push ebp
                   mov ebp, esp
                   mov eax, [ebp + 8] ;a
                   mov ebx, [ebp + 12] ;b
                   mov ecx, [ebp + 16] ;c

                   add eax, ebx
                   add eax, ecx
                   mov [ebp + 20], eax ;S1

                   mov eax, [ebp + 8] ;a

                   imul  eax, eax
                   imul ebx, ebx
                   imul ecx, ecx
                   add eax, ebx
                   add eax, ecx
                   mov [ebp + 24], eax ;S2

                   mov eax, [ebp + 8] ;a
                   mov ebx, [ebp + 12] ;b
                   mov ecx, [ebp + 16] ;c
                   imul  eax, eax
                   imul ebx, ebx
                   imul ecx, ecx
                   imul  eax, eax
                   imul ebx, ebx
                   imul ecx, ecx
                   add eax, ebx
                   add eax, ecx
                   mov [ebp + 28], eax ;S3


                   mov eax, [ebp + 8] ;a
                   mov ebx, [ebp + 12] ;b
                   mov ecx, [ebp + 16] ;c
                   div eax, ecx
                   div ebx, ecx
                   div ecx, ecx

                   add eax, ecx
                   add eax, ebx
                   mov [ebp + 32], eax; s4
                   pop ebp
                   ret

CalculateSum        endp    
end
