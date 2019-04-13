function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta,1);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
h=X*theta;
error = h-y;
J=(1/(2*m))*sum(error.^2);
thetaSqu=theta(2:size(theta,1));
J=J+(lambda/(2*m))*sum(thetaSqu.^2);
grad(1)=(1/m)*sum(error'*X(:,1));
grad(2:size(theta,1))=(1/m)*(X(:,2:n))'*error+(lambda/m)*thetaSqu;












% =========================================================================

grad = grad(:);

end
