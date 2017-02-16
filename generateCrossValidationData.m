%% This function generates cross-validation dataset by dividing the labels 
% into the required numSets
function [trLabels, trInstances, testLabels, testInstances] = generateCrossValidationData(labels, instances, numSets)

% instances = full(spInstances);
[numR, numCLabels] = size(labels);
[~, numCInstances] = size(instances);

testSegmentSize = floor(numR/numSets);
trSegmentSize = numR - testSegmentSize;
testLabels = zeros(testSegmentSize, numCLabels, numSets);
testInstances = zeros(testSegmentSize, numCInstances, numSets);
trLabels = zeros(trSegmentSize, numCLabels, numSets);
trInstances = zeros(trSegmentSize, numCInstances, numSets);
ctr = 1;

sequence = randperm(numR)';
% To efficiently perform circular search for elements we just append the
% vector to itself.
seqCircular = vertcat(sequence, sequence);

for i = 1:numSets
    testSequence = seqCircular(ctr : (ctr + testSegmentSize - 1), 1);
    ctr = ctr + testSegmentSize;
    trSequence = seqCircular(ctr : (ctr + trSegmentSize - 1), 1);
    testLabels(:, :, i) = labels(testSequence, :);
    testInstances(:, :, i) = instances(testSequence, :);
    trLabels(:, :, i) = labels(trSequence, :);
    trInstances(:, :, i) = instances(trSequence, :);
end
end
