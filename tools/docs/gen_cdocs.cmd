@REM Copyright (c) Microsoft. All rights reserved.
@REM Licensed under the MIT license. See LICENSE file in the project root for full license information.

@setlocal EnableExtensions EnableDelayedExpansion
@echo off

set build-root=%~dp0..\..
cd %build-root%\tools\docs

rem ---------------------------------------------------------------------------
rem -- Check directory
rem ---------------------------------------------------------------------------
set docs_dir=%build-root%\doc\api_reference\c
if exist %docs_dir% rd /s /q %docs_dir%
if %errorlevel% neq 0 exit /b %errorlevel%
mkdir %docs_dir%

rem ---------------------------------------------------------------------------
rem -- Generate C API docs
rem ---------------------------------------------------------------------------
doxygen