<script lang="ts">
  type Props = {
    href: string
    label: string
  }
  let { href, label }: Props = $props()
</script>

<a class="block text-white no-underline" {href}>
  {label}
  <div class="text-sm text-gray-400">{href}</div>
</a>
