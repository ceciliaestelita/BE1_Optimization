x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
y1 = [0.2, 0.5, 0.3, 0.7, 1.0, 1.5, 1.8, 2.0, 2.3, 2.2];
y2 = [0.2, 0.5, 0.3, 3.5, 1.0, 1.5, 1.8, 2.0, 2.3, 2.2];
theta_0 =  [0 , 0];
r = @ (theta, y) y - polyval ( theta , x);

Error_M1 =  @( theta) max ( abs (r(theta , y1)));
[theta1 , minM1] = fminsearch ( Error_M1 ,theta_0 );


Error_M2 =  @( theta) sum ( abs (r(theta , y1))); 
[theta2 , minM2] = fminsearch ( Error_M2 ,theta_0 );


Error_M3 =  @( theta) sum (r(theta , y1).^2); 
[theta3 , minM3] = fminsearch ( Error_M3 ,theta_0 );


Error_M1_outlier =  @( theta) max ( abs (r(theta , y2)));
[theta1_out , minM1_out] = fminsearch ( Error_M1_outlier ,theta_0 );


Error_M2_outlier =  @( theta) sum ( abs (r(theta , y2))); 
[theta2_out , minM2_out] = fminsearch ( Error_M2_outlier ,theta_0 );


Error_M3_outlier =  @( theta) sum (r(theta , y2).^2); 
[theta3_out , minM3_out] = fminsearch ( Error_M3_outlier ,theta_0 );

figure(3)

subplot(1,2,1);
plot(x, y1);
title("plot without outliers");

subplot(1,2,2);
plot(x, y2);
title("plot with outliers");
