function [ out ] = isProcessOrMovieData( x )
%isProcessOrMovieData True if input is a Process or MovieData instance
%
% Copyright (C) 2025, Danuser Lab - UTSouthwestern 
%
% This file is part of uSegmentPackage.
% 
% uSegmentPackage is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% uSegmentPackage is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with uSegmentPackage.  If not, see <http://www.gnu.org/licenses/>.
% 
% 

out = isProcessOrMovieObject(x, 'MovieData');

end

