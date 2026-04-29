# Release Process

1. Update version metadata in `atscv.cls` and all public `.sty` files.
2. Update `CHANGELOG.md` with release notes.
3. Run full validation suite.
4. Create and push tag (example): `git tag v0.1.0 && git push origin v0.1.0`.
5. Create GitHub release from the tag.
6. Attach generated sample PDFs as release assets only (do not commit PDFs).
7. Run CTAN checklist:
   - LPPL 1.3c metadata
   - no shell-escape requirement
   - no forbidden packages/layout constructs
   - clean source tree
   - docs and examples present
8. Optional: prepare documented source format for final CTAN upload package.
