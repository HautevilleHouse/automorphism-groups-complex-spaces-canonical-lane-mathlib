import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "automorphism-groups-complex-spaces-canonical-lane"
  theoremName := "Automorphism Groups Complex Spaces"
  theoremObject := "For any connected bounded domain in ℂⁿ, the automorphism group is a Lie group."
  classicalBoundary := "Full classification of automorphism groups"
  manifoldConstrainedStatement := "Admissible-class bridge closure via complex analytic methods."
  certificateLane := "automorphism_groups_constrained"
  carriedRemainder := "Outside the admissible class, classical classification remains open."
}

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse