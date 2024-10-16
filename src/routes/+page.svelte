<script lang="ts">
  import { Presentation, Slides } from '@animotion/core'
  import bg1 from '$lib/assets/pres-bgr-flat-1.jpg'
  // import bg2 from '$lib/assets/pres-bgr-flat-2.jpg'
  // import bg3 from '$lib/assets/pres-bgr-flat-3.jpg'
  import bottomLine from '$lib/assets/qest-logo-line-footer-negative.svg'
</script>

<Presentation
  options={{
    history: true,
    transition: 'fade',
    controls: false,
    progress: true,
  }}
>
  <div class="absolute inset-0 z-0 p-24">
    <img alt="background" src={bg1} class="absolute top-0 left-0 h-full w-full object-fill" />
    <img alt="bottom-line" class="relative top-full z-50 h-[60px] w-full" src={bottomLine} />
  </div>

  <Slides center={true} />
</Presentation>
