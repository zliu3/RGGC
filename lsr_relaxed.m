function [ Z ] = lsr_relaxed( X, lambda, dig )
%% Solves the following
%
% min 1/2 || X - XZ ||_F^2 + lambda/2 || Z ||_F^2
%   s.t. diag(Z) = 0 (when diag = 1)
%
%
%

if (dig)
    D = pinv(X' * X + lambda*eye(size(X,2)));
    Z = -D / spdiags(diag(D), 0, size(X,2), size(X,2));
    Z(logical(eye(size(Z)))) = 0;
else
    Z = (X' * X + lambda*eye(size(X,2))) \ X'*X;
end

end

