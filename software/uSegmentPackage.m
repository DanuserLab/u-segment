classdef uSegmentPackage < Package
    % The main class of the u-segment package.
    % This u-segment package is for 2D segmentation. 
    % It has 4 processes, which are the same as the first 4 processes of WindowingPackage as of April 2024.
    %
    % Qiongjing (Jenny) Zou, April 2024
%
% Copyright (C) 2024, Danuser Lab - UTSouthwestern 
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
    
    methods
        function obj = uSegmentPackage(owner,varargin)
            % Constructor of class uSegmentPackage
            
            if nargin == 0
                super_args = {};
            else
                 % Check input
                ip =inputParser;
                ip.addRequired('owner',@(x) isa(x,'MovieObject'));
                ip.addOptional('outputDir',owner.outputDirectory_,@ischar);
                ip.parse(owner,varargin{:});
                outputDir = ip.Results.outputDir;
                
                super_args{1} = owner;
                super_args{2} = [outputDir  filesep 'uSegmentPackage'];
            end
            
            % Call the superclass constructor
            obj = obj@Package(super_args{:});
        end
        
    end
    
    methods (Static)
        
        function m = getDependencyMatrix(i,j)
            
            m = [0 0 0 0;  %1 GenerateSummationChannelProcess (optional)
                 2 0 0 0;  %2 Segmentation
                 0 1 0 0;  %3 TremblingCorrectionProcess (optional)
                 0 1 2 0;];%4 MaskRefine (optional)
            if nargin<2, j=1:size(m,2); end
            if nargin<1, i=1:size(m,1); end
            m=m(i,j);
        end
        
        function name = getName()
            name = 'u-segment';
        end
        
        function varargout = GUI(varargin)
            % Start the package GUI
            varargout{1} = uSegmentPackageGUI(varargin{:});
        end
        
        function procConstr = getDefaultProcessConstructors(index)
            procConstr = {
                @GenerateSummationChannelProcess,...
                @MultiScaleAutoSegmentationProcess,...
                @TremblingCorrectionProcess,...
                @MaskRefinementProcess};
            
            if nargin==0, index=1:numel(procConstr); end
            procConstr=procConstr(index);
        end

        function classes = getProcessClassNames(index)
            classes = {
                'GenerateSummationChannelProcess',...
                'SegmentationProcess',...
                'TremblingCorrectionProcess',...
                'MaskRefinementProcess'};
            if nargin==0, index=1:numel(classes); end
            classes=classes(index);
        end
        
    end  
    
end