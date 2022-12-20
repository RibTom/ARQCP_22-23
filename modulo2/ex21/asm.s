.section .data
	.global code
	.global currentSalary

.section .text
	.global new_salary

new_salary:
movw currentSalary(%rip),%ax
cmpw $21,code(%rip) 	#compare 21 to code
	je eng		#jump to eng if 21
cmpw $20,code(%rip) 	#compare 20 to code
	je man		#jump to man if 20
cmpw $22,code(%rip) 	#compare 22 to code
	je tec		#jump to tec if 22

addw $150,%ax 		#adds 150 to ax for any other code
jmp end

man:
addw $400,%ax		#adds 400 to ax
jmp end

eng:
addw $300,%ax		#adds 300 to ax		
jmp end

tec:
addw $200,%ax		#adds 200 to ax
jmp end
end:
ret
