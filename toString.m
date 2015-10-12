function [arr] = toString(ex)
%returns an array of integer strings that go from 1 to ex

nums = 1:ex
arr = [];
for i = 1:ex
    arr = [arr,nums(i) + ''];
end



end