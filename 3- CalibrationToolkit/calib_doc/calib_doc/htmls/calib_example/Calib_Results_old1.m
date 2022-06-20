% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 657.665983081099284 ; 658.162317968518892 ];

%-- Principal point:
cc = [ 303.237037873703287 ; 242.470130617168337 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.254307767298452 ; 0.123945596844314 ; -0.000178656096994 ; 0.000036524943640 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.380695445512206 ; 0.407399046982648 ];

%-- Principal point uncertainty:
cc_error = [ 0.773940807927137 ; 0.708315402244980 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.002972298318152 ; 0.011828117742180 ; 0.000160223559931 ; 0.000158396698599 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.654828e+00 ; 1.651790e+00 ; -6.693856e-01 ];
Tc_1  = [ -1.779037e+02 ; -8.374636e+01 ; 8.533661e+02 ];
omc_error_1 = [ 9.032815e-04 ; 1.167462e-03 ; 1.492453e-03 ];
Tc_error_1  = [ 1.005021e+00 ; 9.268248e-01 ; 5.094553e-01 ];

%-- Image #2:
omc_2 = [ 1.848992e+00 ; 1.900495e+00 ; -3.966352e-01 ];
Tc_2  = [ -1.552283e+02 ; -1.593594e+02 ; 7.578745e+02 ];
omc_error_2 = [ 9.489458e-04 ; 1.160055e-03 ; 1.804416e-03 ];
Tc_error_2  = [ 8.973050e-01 ; 8.214860e-01 ; 5.006503e-01 ];

%-- Image #3:
omc_3 = [ 1.742485e+00 ; 2.077560e+00 ; -5.049894e-01 ];
Tc_3  = [ -1.254417e+02 ; -1.745929e+02 ; 7.758042e+02 ];
omc_error_3 = [ 8.685484e-04 ; 1.229192e-03 ; 1.865517e-03 ];
Tc_error_3  = [ 9.172896e-01 ; 8.406871e-01 ; 4.812355e-01 ];

%-- Image #4:
omc_4 = [ 1.828079e+00 ; 2.116614e+00 ; -1.102938e+00 ];
Tc_4  = [ -6.465775e+01 ; -1.548385e+02 ; 7.793461e+02 ];
omc_error_4 = [ 7.795497e-04 ; 1.273395e-03 ; 1.746934e-03 ];
Tc_error_4  = [ 9.244301e-01 ; 8.390274e-01 ; 3.876697e-01 ];

%-- Image #5:
omc_5 = [ 1.079253e+00 ; 1.922294e+00 ; -2.531801e-01 ];
Tc_5  = [ -9.251678e+01 ; -2.289436e+02 ; 7.370851e+02 ];
omc_error_5 = [ 7.614524e-04 ; 1.187437e-03 ; 1.337136e-03 ];
Tc_error_5  = [ 8.807092e-01 ; 8.007847e-01 ; 4.737896e-01 ];

%-- Image #6:
omc_6 = [ -1.701372e+00 ; -1.929268e+00 ; -7.918601e-01 ];
Tc_6  = [ -1.490197e+02 ; -7.962886e+01 ; 4.449198e+02 ];
omc_error_6 = [ 7.319009e-04 ; 1.185203e-03 ; 1.604929e-03 ];
Tc_error_6  = [ 5.274511e-01 ; 4.947790e-01 ; 4.051174e-01 ];

%-- Image #7:
omc_7 = [ 1.996361e+00 ; 1.931505e+00 ; 1.310980e+00 ];
Tc_7  = [ -8.309941e+01 ; -7.769878e+01 ; 4.403577e+02 ];
omc_error_7 = [ 1.401702e-03 ; 7.197292e-04 ; 1.683832e-03 ];
Tc_error_7  = [ 5.302085e-01 ; 4.837802e-01 ; 4.279682e-01 ];

%-- Image #8:
omc_8 = [ 1.960975e+00 ; 1.824226e+00 ; 1.326671e+00 ];
Tc_8  = [ -1.702731e+02 ; -1.035114e+02 ; 4.622089e+02 ];
omc_error_8 = [ 1.337947e-03 ; 7.342504e-04 ; 1.614964e-03 ];
Tc_error_8  = [ 5.795993e-01 ; 5.255304e-01 ; 4.820780e-01 ];

%-- Image #9:
omc_9 = [ -1.363780e+00 ; -1.980624e+00 ; 3.210901e-01 ];
Tc_9  = [ -2.061587e+00 ; -2.250543e+02 ; 7.287005e+02 ];
omc_error_9 = [ 9.120348e-04 ; 1.171226e-03 ; 1.509330e-03 ];
Tc_error_9  = [ 8.685324e-01 ; 7.882654e-01 ; 4.925887e-01 ];

%-- Image #10:
omc_10 = [ -1.513178e+00 ; -2.086799e+00 ; 1.889379e-01 ];
Tc_10  = [ -2.977819e+01 ; -3.003526e+02 ; 8.603699e+02 ];
omc_error_10 = [ 1.112251e-03 ; 1.331173e-03 ; 2.005945e-03 ];
Tc_error_10  = [ 1.043922e+00 ; 9.371460e-01 ; 6.537919e-01 ];

%-- Image #11:
omc_11 = [ -1.793113e+00 ; -2.065120e+00 ; -4.800982e-01 ];
Tc_11  = [ -1.512349e+02 ; -2.353718e+02 ; 7.048769e+02 ];
omc_error_11 = [ 9.979628e-04 ; 1.256659e-03 ; 2.160033e-03 ];
Tc_error_11  = [ 8.557861e-01 ; 8.025510e-01 ; 6.468409e-01 ];

%-- Image #12:
omc_12 = [ -1.838865e+00 ; -2.087394e+00 ; -5.158950e-01 ];
Tc_12  = [ -1.336427e+02 ; -1.772184e+02 ; 6.050321e+02 ];
omc_error_12 = [ 8.504740e-04 ; 1.207345e-03 ; 1.991797e-03 ];
Tc_error_12  = [ 7.288451e-01 ; 6.785677e-01 ; 5.407100e-01 ];

%-- Image #13:
omc_13 = [ -1.918760e+00 ; -2.116656e+00 ; -5.946477e-01 ];
Tc_13  = [ -1.328363e+02 ; -1.435600e+02 ; 5.448746e+02 ];
omc_error_13 = [ 7.933555e-04 ; 1.195098e-03 ; 1.958273e-03 ];
Tc_error_13  = [ 6.544987e-01 ; 6.074336e-01 ; 4.907597e-01 ];

%-- Image #14:
omc_14 = [ -1.954155e+00 ; -2.124684e+00 ; -5.851006e-01 ];
Tc_14  = [ -1.237265e+02 ; -1.371327e+02 ; 4.909085e+02 ];
omc_error_14 = [ 7.466509e-04 ; 1.171368e-03 ; 1.917111e-03 ];
Tc_error_14  = [ 5.905312e-01 ; 5.467369e-01 ; 4.404097e-01 ];

%-- Image #15:
omc_15 = [ -2.110541e+00 ; -2.253783e+00 ; -4.957518e-01 ];
Tc_15  = [ -1.992800e+02 ; -1.344936e+02 ; 4.750550e+02 ];
omc_error_15 = [ 8.620614e-04 ; 1.097409e-03 ; 2.090090e-03 ];
Tc_error_15  = [ 5.791317e-01 ; 5.422694e-01 ; 4.748430e-01 ];

%-- Image #16:
omc_16 = [ 1.886927e+00 ; 2.336082e+00 ; -1.734464e-01 ];
Tc_16  = [ -1.611552e+01 ; -1.703012e+02 ; 6.958826e+02 ];
omc_error_16 = [ 1.185644e-03 ; 1.252733e-03 ; 2.604803e-03 ];
Tc_error_16  = [ 8.241913e-01 ; 7.483009e-01 ; 5.624911e-01 ];

%-- Image #17:
omc_17 = [ -1.612666e+00 ; -1.953461e+00 ; -3.478409e-01 ];
Tc_17  = [ -1.353504e+02 ; -1.389216e+02 ; 4.901267e+02 ];
omc_error_17 = [ 7.377921e-04 ; 1.128612e-03 ; 1.590551e-03 ];
Tc_error_17  = [ 5.828411e-01 ; 5.422632e-01 ; 3.903507e-01 ];

%-- Image #18:
omc_18 = [ -1.342004e+00 ; -1.693443e+00 ; -2.976697e-01 ];
Tc_18  = [ -1.854834e+02 ; -1.576660e+02 ; 4.416537e+02 ];
omc_error_18 = [ 8.468483e-04 ; 1.096639e-03 ; 1.256731e-03 ];
Tc_error_18  = [ 5.303585e-01 ; 4.947533e-01 ; 3.795753e-01 ];

%-- Image #19:
omc_19 = [ -1.925674e+00 ; -1.838210e+00 ; -1.440675e+00 ];
Tc_19  = [ -1.066805e+02 ; -7.955480e+01 ; 3.342516e+02 ];
omc_error_19 = [ 7.286433e-04 ; 1.284732e-03 ; 1.627813e-03 ];
Tc_error_19  = [ 4.113672e-01 ; 3.773694e-01 ; 3.557654e-01 ];

%-- Image #20:
omc_20 = [ 1.895790e+00 ; 1.593202e+00 ; 1.471857e+00 ];
Tc_20  = [ -1.440370e+02 ; -8.795405e+01 ; 3.965710e+02 ];
omc_error_20 = [ 1.357081e-03 ; 7.507725e-04 ; 1.462826e-03 ];
Tc_error_20  = [ 5.024141e-01 ; 4.500859e-01 ; 4.306344e-01 ];

