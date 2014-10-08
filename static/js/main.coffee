$ ->
  Particle = ->
    @color = colorArray[Math.floor((Math.random() * 5) + 1)]
    @x = Math.random() * W
    @y = Math.random() * H
    @direction =
      x: -1 + Math.random() * 2
      y: -1 + Math.random() * 2

    @vx = 1 * Math.random() + .05
    @vy = 1 * Math.random() + .05

    @radius = .9 * Math.random() + 1
    @move = ->
      @x += @vx * @direction.x
      @y += @vy * @direction.y
      return

    @changeDirection = (axis) ->
      @direction[axis] *= -1
      return

    @draw = ->
      ctx.beginPath()
      ctx.fillStyle = @color
      ctx.arc @x, @y, @radius, 0, Math.PI * 2, false
      ctx.fill()
      return

    @boundaryCheck = ->
      if @x >= W
        @x = W
        @changeDirection "x"
      else if @x <= 0
        @x = 0
        @changeDirection "x"
      if @y >= H
        @y = H
        @changeDirection "y"
      else if @y <= 0
        @y = 0
        @changeDirection "y"
      return

    return
  clearCanvas = ->
    ctx.clearRect 0, 0, W, H
    return
  createParticles = ->
    i = particleCount - 1

    while i >= 0
      p = new Particle()
      particles.push p
      i--
    return
  drawParticles = ->
    i = particleCount - 1

    while i >= 0
      p = particles[i]
      p.draw()
      i--
    return
  updateParticles = ->
    i = particles.length - 1

    while i >= 0
      p = particles[i]
      p.move()
      p.boundaryCheck()
      i--
    return
  initParticleSystem = ->
    createParticles()
    drawParticles()
    return
  animateParticles = ->
    clearCanvas()
    drawParticles()
    updateParticles()
    requestAnimationFrame animateParticles
    return
  W = undefined
  H = undefined
  canvas = undefined
  ctx = undefined
  particleCount = 100
  particles = []
  colorArray = [
    "rgba(0,0,0,.8)"
    "rgba(0,0,0,.7)"
    "rgba(0,0,0,.6)"
    "rgba(0,0,0,.5)"
    "rgba(0,0,0,.4)"
    "rgba(0,0,0,.3)"
    "rgba(0,0,0,.2)"
    # "bisque"
    # "teal"
    # "crimson"
    # "gold"
    # "skyblue"
    # "palegreen"
  ]
  W = window.innerWidth + 200
  H = 900
  canvas = $("#holyshtballs").get(0)
  canvas.width = W
  canvas.height = H
  ctx = canvas.getContext("2d")
  initParticleSystem()
  requestAnimationFrame animateParticles
  return
