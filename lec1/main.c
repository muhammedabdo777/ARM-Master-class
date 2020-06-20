/******************************************************************************
 * @file main.c 
 * @brief This file is asimple example for writting afunc @ adefined add 
 *
 * @author Muhammed almanakhly
 * @date june 17, 2020
 *
 *****************************************************************************/
 #define LOCATE_FUNC  __attribute__((__section__(".sprint")))
 // extern unsigned int _SPRINT_BASE_ADDRESS;
 // unsigned int * ptrsprint = _SPRINT_BASE_ADDRESS;
 void LOCATE_FUNC  SprintArmfunc(void);
 
 
 
 int main(void){
	 
	 
	 
	 
	 return 0;
 }


void SprintArmfunc(void){
	int x=10 ;
	static int y =5;
	

}