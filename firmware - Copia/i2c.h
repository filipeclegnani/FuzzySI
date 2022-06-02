#ifndef I2C_H
#define I2C_H

//-----------------------------------------------------------------------------
void I2C_Init(void);
void I2C_Idle(void);
void I2C_Start(void);
void I2C_Restart(void);
void I2C_Write(unsigned char);
unsigned char I2C_Read(void);
void I2C_Stop(void);
void I2C_ACK(void);
void I2C_NACK(void);
//-----------------------------------------------------------------------------

#endif