#!/usr/bin/env node

const fs = require('fs');
const { Octokit } = require('@octokit/rest');
const argv = require('yargs/yargs')(process.argv.slice(2)).argv;

const owner = argv.owner;
const repo = argv.repo;
const file = argv.file;

if (!owner || !repo || !file) {
  console.error('Missing arguments: --owner, --repo, --file');
  process.exit(1);
}

const content = fs.readFileSync(file, 'utf-8');
const title = content.split('\n')[0].replace(/^#\s*/, '');
const body = content.split('\n').slice(1).join('\n').trim();

const octokit = new Octokit({ auth: process.env.GITHUB_TOKEN });

octokit.issues.create({
  owner,
  repo,
  title,
  body,
})
.then(() => console.log(`Issue created: ${title}`))
.catch((error) => console.error(`Error creating issue: ${error.message}`));