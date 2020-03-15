function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% Here the problem is with X 
% X should have been X_0 X_1 (in each column)
% each column of X is supposed to represent a training example
% but here each row represents a training example
% But we are getting this as X_0 and X_1 (in each row)
% as a result we cannot apply theta_transpose * X 
% so we have 2 options
% 1. apply NORMAL EQUATION of X. Theta to get h
% 2. use appropriate tranformations to get correct answer


% Method 1.
h = X * theta;

% Method 2 (very bad)
%temp = theta' * X'; % remember we are getting bad X, 
% each column of X is supposed to represent a training example
%h = temp'; % this makes results of above into a vector so that they can be directly applied


J = (1/(2*m)) *(sum((h - y) .^ 2))

% =========================================================================

end
