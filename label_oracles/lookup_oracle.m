% LOOKUP_ORACLE trivial lookup-table oracle with fixed labels.
%
% This provides a trivial lookup-table label oracle. Given a query
% point, returns the corresponding label fromn a given list of fixed
% ground truth labels.
%
% Usage:
%
%   label = lookup_oracle(problem, query_ind, labels)
%
% Inputs:
%
%     problem: a struct describing the problem, containing the field:
%
%        points: an (n x d) data matrix for the available points
%
%              Note: this input, part of the standard label oracle
%              API, is ignored by lookup_oracle. If desired, for
%              standalone use it can be replaced with an empty matrix.
%
%   query_ind: an index into problem.points specifying the point to be
%              queried
%      labels: a length-n vector of ground-truth class labels for
%              each point in problem.points
%
% Output:
%
%   label: an integer between 1 and problem.num_classes indicating the
%          observed label
%
% See also LABEL_ORACLES.

% Copyright (c) 2013--2014 Roman Garnett.

function label = lookup_oracle(~, query_ind, labels)

  label = labels(query_ind);

end