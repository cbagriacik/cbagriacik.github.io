# cbagriacik.github.io

Source of https://cbagriacik.github.io: CVEs acknowledged to Coşkun Bağrıaçık.

## Add a CVE

1. Wait until the vendor advisory is public and your name appears on its acknowledgement list.
2. Copy `_templates/CVE-YYYY-NNNNN.md` to `_cves/<CVE-ID>.md` (for example `_cves/CVE-2026-83736.md`).
3. Fill in the front matter from the advisory. Write `credit` exactly as the advisory prints it.
   Set `shared_credit: true` when other researchers are credited on the same CVE.
4. Optional: put the write-up in the body, in Markdown.
5. Commit and push. Pages rebuilds within a minute or two.
6. In Google Search Console, inspect `/cve/<CVE-ID>/` and click "Request indexing".

## Preview locally

Needs Docker Desktop running.

```powershell
.\serve.ps1            # real entries only
.\serve.ps1 -Examples  # also renders the sample entries in _cves/example-*.md
```

Then open http://localhost:4000. The sample entries are `published: false` and git-ignored.
