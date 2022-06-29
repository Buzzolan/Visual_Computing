% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 657.643737118227932 ; 658.041041097383300 ];

%-- Principal point:
cc = [ 303.192173250219412 ; 242.555177693662273 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.256098198590272 ; 0.130891874075340 ; -0.000191320819455 ; 0.000038519449293 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.402475033696413 ; 0.430614325818306 ];

%-- Principal point uncertainty:
cc_error = [ 0.818694006861131 ; 0.748891394695270 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.003142438206311 ; 0.012509724909969 ; 0.000169390642532 ; 0.000167568019660 ; 0.000000000000000 ];

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
omc_1 = [ 1.654719e+00 ; 1.651629e+00 ; -6.697981e-01 ];
Tc_1  = [ -1.778476e+02 ; -8.365736e+01 ; 8.532220e+02 ];
omc_error_1 = [ 9.549687e-04 ; 1.234711e-03 ; 1.577880e-03 ];
Tc_error_1  = [ 1.063091e+00 ; 9.799423e-01 ; 5.385759e-01 ];

%-- Image #2:
omc_2 = [ 1.848876e+00 ; 1.900269e+00 ; -3.969671e-01 ];
Tc_2  = [ -1.552063e+02 ; -1.592770e+02 ; 7.578524e+02 ];
omc_error_2 = [ 1.003512e-03 ; 1.227046e-03 ; 1.908038e-03 ];
Tc_error_2  = [ 9.492910e-01 ; 8.687461e-01 ; 5.293601e-01 ];

%-- Image #3:
omc_3 = [ 1.742277e+00 ; 2.077254e+00 ; -5.051093e-01 ];
Tc_3  = [ -1.254889e+02 ; -1.745475e+02 ; 7.757373e+02 ];
omc_error_3 = [ 9.183614e-04 ; 1.300133e-03 ; 1.972420e-03 ];
Tc_error_3  = [ 9.703935e-01 ; 8.890152e-01 ; 5.088395e-01 ];

%-- Image #4:
omc_4 = [ 1.827843e+00 ; 2.116466e+00 ; -1.102883e+00 ];
Tc_4  = [ -6.468430e+01 ; -1.547913e+02 ; 7.793401e+02 ];
omc_error_4 = [ 8.242532e-04 ; 1.346782e-03 ; 1.847046e-03 ];
Tc_error_4  = [ 9.779319e-01 ; 8.873252e-01 ; 4.099262e-01 ];

%-- Image #5:
omc_5 = [ 1.078974e+00 ; 1.922185e+00 ; -2.527146e-01 ];
Tc_5  = [ -9.248702e+01 ; -2.290789e+02 ; 7.369118e+02 ];
omc_error_5 = [ 8.052656e-04 ; 1.256158e-03 ; 1.413844e-03 ];
Tc_error_5  = [ 9.315659e-01 ; 8.466923e-01 ; 5.010744e-01 ];

%-- Image #6:
omc_6 = [ -1.701767e+00 ; -1.929499e+00 ; -7.917732e-01 ];
Tc_6  = [ -1.490440e+02 ; -7.960182e+01 ; 4.451487e+02 ];
omc_error_6 = [ 7.742137e-04 ; 1.253983e-03 ; 1.698480e-03 ];
Tc_error_6  = [ 5.582802e-01 ; 5.234893e-01 ; 4.287387e-01 ];

%-- Image #7:
omc_7 = [ 1.996394e+00 ; 1.931396e+00 ; 1.310789e+00 ];
Tc_7  = [ -8.307600e+01 ; -7.769493e+01 ; 4.404077e+02 ];
omc_error_7 = [ 1.482953e-03 ; 7.611890e-04 ; 1.780993e-03 ];
Tc_error_7  = [ 5.609620e-01 ; 5.116570e-01 ; 4.525953e-01 ];

%-- Image #8:
omc_8 = [ 1.961170e+00 ; 1.824198e+00 ; 1.326281e+00 ];
Tc_8  = [ -1.702792e+02 ; -1.035199e+02 ; 4.623205e+02 ];
omc_error_8 = [ 1.415030e-03 ; 7.762783e-04 ; 1.707828e-03 ];
Tc_error_8  = [ 6.133604e-01 ; 5.559087e-01 ; 5.098900e-01 ];

%-- Image #9:
omc_9 = [ -1.363901e+00 ; -1.980862e+00 ; 3.208873e-01 ];
Tc_9  = [ -2.107583e+00 ; -2.250928e+02 ; 7.289451e+02 ];
omc_error_9 = [ 9.646743e-04 ; 1.238929e-03 ; 1.596484e-03 ];
Tc_error_9  = [ 9.191446e-01 ; 8.339208e-01 ; 5.210881e-01 ];

%-- Image #10:
omc_10 = [ -1.513491e+00 ; -2.087099e+00 ; 1.880824e-01 ];
Tc_10  = [ -2.988487e+01 ; -3.003468e+02 ; 8.605058e+02 ];
omc_error_10 = [ 1.176360e-03 ; 1.408267e-03 ; 2.122788e-03 ];
Tc_error_10  = [ 1.104568e+00 ; 9.912885e-01 ; 6.916171e-01 ];

%-- Image #11:
omc_11 = [ -1.793140e+00 ; -2.065011e+00 ; -4.802054e-01 ];
Tc_11  = [ -1.512818e+02 ; -2.352876e+02 ; 7.050054e+02 ];
omc_error_11 = [ 1.055147e-03 ; 1.328943e-03 ; 2.284191e-03 ];
Tc_error_11  = [ 9.055084e-01 ; 8.488698e-01 ; 6.841426e-01 ];

%-- Image #12:
omc_12 = [ -1.839142e+00 ; -2.087535e+00 ; -5.158600e-01 ];
Tc_12  = [ -1.336741e+02 ; -1.771659e+02 ; 6.051961e+02 ];
omc_error_12 = [ 8.996856e-04 ; 1.277361e-03 ; 2.107701e-03 ];
Tc_error_12  = [ 7.712463e-01 ; 7.177670e-01 ; 5.720322e-01 ];

%-- Image #13:
omc_13 = [ -1.919022e+00 ; -2.116713e+00 ; -5.945137e-01 ];
Tc_13  = [ -1.328657e+02 ; -1.435030e+02 ; 5.450048e+02 ];
omc_error_13 = [ 8.393223e-04 ; 1.264437e-03 ; 2.072303e-03 ];
Tc_error_13  = [ 6.925376e-01 ; 6.424981e-01 ; 5.191809e-01 ];

%-- Image #14:
omc_14 = [ -1.954395e+00 ; -2.124760e+00 ; -5.847825e-01 ];
Tc_14  = [ -1.237532e+02 ; -1.370913e+02 ; 4.910909e+02 ];
omc_error_14 = [ 7.899238e-04 ; 1.239159e-03 ; 2.028732e-03 ];
Tc_error_14  = [ 6.249411e-01 ; 5.783887e-01 ; 4.659683e-01 ];

%-- Image #15:
omc_15 = [ -2.110704e+00 ; -2.253882e+00 ; -4.950584e-01 ];
Tc_15  = [ -1.993039e+02 ; -1.344608e+02 ; 4.752474e+02 ];
omc_error_15 = [ 9.115253e-04 ; 1.160015e-03 ; 2.210454e-03 ];
Tc_error_15  = [ 6.130248e-01 ; 5.736725e-01 ; 5.021165e-01 ];

%-- Image #16:
omc_16 = [ 1.886758e+00 ; 2.335938e+00 ; -1.729951e-01 ];
Tc_16  = [ -1.615380e+01 ; -1.702748e+02 ; 6.958200e+02 ];
omc_error_16 = [ 1.252722e-03 ; 1.323594e-03 ; 2.749530e-03 ];
Tc_error_16  = [ 8.718380e-01 ; 7.912798e-01 ; 5.946735e-01 ];

%-- Image #17:
omc_17 = [ -1.612964e+00 ; -1.953643e+00 ; -3.476698e-01 ];
Tc_17  = [ -1.353876e+02 ; -1.389058e+02 ; 4.903582e+02 ];
omc_error_17 = [ 7.805762e-04 ; 1.194159e-03 ; 1.682898e-03 ];
Tc_error_17  = [ 6.169046e-01 ; 5.737326e-01 ; 4.131023e-01 ];

%-- Image #18:
omc_18 = [ -1.341895e+00 ; -1.693367e+00 ; -2.975753e-01 ];
Tc_18  = [ -1.854448e+02 ; -1.577386e+02 ; 4.415839e+02 ];
omc_error_18 = [ 8.955296e-04 ; 1.160392e-03 ; 1.329037e-03 ];
Tc_error_18  = [ 5.610146e-01 ; 5.231430e-01 ; 4.013168e-01 ];

%-- Image #19:
omc_19 = [ -1.925897e+00 ; -1.838152e+00 ; -1.440605e+00 ];
Tc_19  = [ -1.066809e+02 ; -7.954543e+01 ; 3.343516e+02 ];
omc_error_19 = [ 7.705850e-04 ; 1.358687e-03 ; 1.721952e-03 ];
Tc_error_19  = [ 4.353146e-01 ; 3.992211e-01 ; 3.763289e-01 ];

%-- Image #20:
omc_20 = [ 1.895846e+00 ; 1.593082e+00 ; 1.471976e+00 ];
Tc_20  = [ -1.439834e+02 ; -8.800465e+01 ; 3.964140e+02 ];
omc_error_20 = [ 1.435341e-03 ; 7.938553e-04 ; 1.546696e-03 ];
Tc_error_20  = [ 5.313859e-01 ; 4.758231e-01 ; 4.552473e-01 ];

