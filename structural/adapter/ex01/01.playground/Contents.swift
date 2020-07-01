import Cocoa


/// ## Requirement1:
/// Write a `RoundHole` class that manipluated by `radius`

class RoundHole {
    private(set) var radius: Int

    init(radius: Int) {
        self.radius = radius
    }

    func isFit(peg: RoundPeg) -> Bool {
        return self.radius >= peg.radius
    }
}

/// ## Requirement2:
///I want to a `RoundPeg` which is fit to `RoundHole`, which means the `radius` will be same.

class RoundPeg {
    private (set) var radius: Int

    init(radius: Int) {
        self.radius = radius
    }
}

/// ## Requirement3:
/// I want a `SquarePeg`, which is fit to `RoundPeg`

class SquarePeg {
    private (set) var width: Int

    init(width: Int) {
        self.width = width
    }
}

class SqurePegAdapter: RoundPeg {
    var peg: SquarePeg!

    required init(peg: SquarePeg) {
        let radius = Double(peg.width) * sqrt(2.0) / 2
        super.init(radius: Int(radius))
        self.peg = peg
    }

}

/// TESTING
let hole = RoundHole(radius: 6)
let roundPeg = RoundPeg(radius: 6)
print(hole.isFit(peg: roundPeg))

let squarePeg = SquarePeg(width: 6)
let adapter = SqurePegAdapter(peg: squarePeg)

print(hole.isFit(peg: adapter))




