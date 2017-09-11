import UIKit

let score = [1,2,3,4,5]
print(score)

var total = 0

for s in score {
    if (s % 2 == 0) {
        total += 1
    }
}

print(total)
