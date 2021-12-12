# M-DTFT
M point DTFT in MATLAB
This program computes the M point DTFT of a given signal in [−π, π] range. I wrote a MATLAB function named "DTFT.m" to do so.


For examining the result I also wrote a function that computes the convolution of two indexed sequences, named "convolution.m"

I evaluated my result with 2 types of inputs + audio signal and apply a LTI system on them as below.


System: ![image](https://user-images.githubusercontent.com/47606879/145708198-473fe520-6d4f-43e2-bbf3-034b5249d61c.png)

## X1 
PART C
x[n] = 0.9^n * u[n]

![image](https://user-images.githubusercontent.com/47606879/145708223-ec5b41ae-ec89-4250-8a08-99092f82a568.png)

The results are the same in this example.

## X2
PART D
x[n] = sin(2π×0.01n)+sin(2π×0.25n)+sin(2π×0.29n) for n = 0, 1, ..., 1000

![image](https://user-images.githubusercontent.com/47606879/145708242-1c45b6a1-b5b4-4ca2-ae0e-44346aa0910c.png)

In this example, due to cosine frequencies at these point there is difference. at 0.58 and 0.5 (Normalized frequencies)


#### I also used an audio signal and applied this system to it.
PART D
input = "meyou.wav"
output = "outmeyou.wav"




 
