struct VertexInput {
    @location(0) position: vec3<f32>,
    @location(1) color: vec3<f32>,
};

struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
    @location(0) color: vec3<f32>,
};

@vertex
fn vs_main(vin: VertexInput) -> VertexOutput {
    var vout: VertexOutput;
    vout.color = vin.color;
    vout.clip_position = vec4<f32>(vin.position, 1.0);
    return vout;
}

@fragment
fn fs_main(fin: VertexOutput) -> @location(0) vec4<f32> {
    return vec4<f32>(fin.color, 1.0);
}
