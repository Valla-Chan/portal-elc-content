$modelname	"vallas_dream\ratcord.mdl"
$body mybody	"ratcord.smd"
$surfaceprop "metal"

$contents "solid"

$illumposition -0.147 0.022 0

$cdmaterials "models\vallas_dream"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -18.095 -18.22 -17.823 18.05 17.925 17.823

$definebone "ratcord_model" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "ref" {
	"ratcord.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$keyvalues
{
	physgun_interactions
	{
	 	preferred_carryangles 	"0 180 0"
	 	onworldimpact 		stick
	 	onlaunch 		spin_zaxis
	 	onbreak 		explode_fire
	}
}

$collisionjoints "ratcord_col.smd" {
  $concaveperjoint
  $maxconvexpieces 40
}
