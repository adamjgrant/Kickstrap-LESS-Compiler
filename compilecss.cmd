::For convenience
	@cls
	@echo.
	@echo.
	@echo.
	@echo.
	@echo             Kickstrap
	@echo             AdamKochanowicz.com
	@echo.
	@echo.
	@echo.
	@echo.
	@echo Compiling theme...
	@cscript //nologo "%~dp0lessc.wsf" %* kickstrap.less css/kickstrap.css
	@echo Done.
