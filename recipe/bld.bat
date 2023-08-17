:: check licenses
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

:: build
cargo install --locked --root "%LIBRARY_PREFIX%" --path "crates\resvg" || goto :error

:: strip debug symbols
strip "%LIBRARY_PREFIX%\bin\resvg.exe" || goto :error

:: remove extra build file
del /F /Q "%LIBRARY_PREFIX%\.crates.toml"

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1

AS2i Informatique
00 33 9 77 1 999 75

