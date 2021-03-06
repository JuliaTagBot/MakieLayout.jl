using MakieLayout
using Makie

begin
    scene = Scene(resolution = (1000, 1000));
    screen = display(scene)
    campixel!(scene);

    maingl = GridLayout(scene, alignmode = Outside(30))

    for i in 1:7
        maingl[i, 1:end] = LAxis(scene)
        sleep(0.3)
        maingl[1:end, i + 1] = LAxis(scene)
        sleep(0.3)
    end

    # maingl[2:end-1, 0] = LAxis(scene)

end
