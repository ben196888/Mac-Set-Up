#!/bin/bash
set -e

echo "Installing .NET SDK..."
brew install --cask dotnet-sdk

echo "Installing C# and F# templates..."
dotnet new install Microsoft.DotNet.Common.ProjectTemplates.6.0

echo ".NET SDK with C# and F# templates setup complete."
