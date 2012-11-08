# Conditionally compiles only if script detects changes to any of the less files (if modified date is after css file)
# Useful if compilation is setup to take every time web project is compiled to avoid wasting time

$kickstrap_css = Get-Item kickstrap.css
$less_files = Get-ChildItem . -recurse -Filter *.less
$build = $false
foreach( $file in $less_files )
{
	if( $file.LastWriteTime -gt $kickstrap_css.LastWriteTime ) {
		$build = $true
	}
}
if( $build ){
	& cscript /nologo lessc.wsf kickstrap.less kickstrap.css
	if( $LastExitCode -ne 0 ) {
		throw "Error encountered while compiling kickstrap"
	}
}
else {
	"No changes detected in LESS files. Compilation cancelled."
}