import XCTest
import Constraid

class ExpandFromSizeTests: XCTestCase {

    func testExpandFromWidthOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.expand(fromWidthOf: viewTwo, constant: 10.0, multiplier: 2.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testExpandFromHeightOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.expand(fromHeightOf: viewTwo, constant: 10.0, multiplier: 2.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }
}
